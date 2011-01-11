require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'rubygems'
require 'bundler/setup'


task :default => :test

desc 'Generate documentation for the birdbath plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Birdbath'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('LICENSE')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

GEM_VERSION = '1.3.3'

# Hoe.new('birdbath', GEM_VERSION) do |p|
#   p.author = "Micah Alles" 
#   p.email = "micah@atomicobject.com" 
#   p.url = "http://migrationtest.rubyforge.org" 
#   p.summary = "A Rails plugin for testing migrations" 
#   p.description = <<-EOS
# birdbath makes testing your migrations easier by 
# adding helper methods to Test::Unit::TestCase for asserting the 
# current state of the schema and executing migrations against the 
# test database.
#   EOS
# 
# end
# 
