# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "birdbath/version"

Gem::Specification.new do |s|
  s.name        = "birdbath"
  s.version     = Birdbath::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Micah Alles"]
  s.email       = ["micah@atomicobject.com"]
  s.homepage    = ""
  s.summary     = %q{A Rails gem for testing migrations}
  s.description = <<-EOS
birdbath makes testing your migrations easier by 
adding helper methods to Test::Unit::TestCase for asserting the 
current state of the schema and executing migrations against the 
test database.
  EOS

  s.rubyforge_project = "birdbath"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
