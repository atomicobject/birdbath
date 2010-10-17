class MigrationTestGenerator < Rails::Generator::NamedBase
  def manifest
    schema_version = class_name.to_i
    raise "Invalid schema version '#{class_name}'" unless schema_version > 0

    schema_version_string = schema_version.to_s.rjust(3,'0')

    migration = Dir["db/migrate/#{schema_version_string}*.rb"].first
    raise "No migration found for schema version #{schema_version_string}" unless migration

    migration_name = File.basename(migration,'.rb').sub(/^\d+_/,'')
    test_class_name = migration_name.camelize + "Test"
    test_file = "test/migration/#{schema_version_string}_#{migration_name}_test.rb"

    record do |m|
      m.directory 'test/migration'
      m.template 'migration_test.rb', test_file, :assigns => {
        :test_class_name => test_class_name,
        :migration_name => migration_name,
        :schema_version => schema_version,
        :previous_schema_version => previous_schema_version(schema_version_string)
      }
    end
  end

  def previous_schema_version(current_version_string)
    versions = Dir["db/migrate/*.rb"].map do |migration_file| 
      migration_file.match(/db\/migrate\/(\d+)_.*\.rb/)[1]
    end.sort
    prev_index = versions.index(current_version_string) - 1
    prev_index < 0 ? -1 : versions[prev_index].to_i
  end
end
