require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'rake/contrib/rubyforgepublisher'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "active_shipping"
    gem.summary = %Q{Shipping API extension for Active Merchant.}
    gem.description = %Q{Shipping API extension for Active Merchant.}
    gem.email = "jmacaulay@gmail.com"
    gem.homepage = "http://github.com/Shopify/active_shipping"
    gem.authors = ["James MacAulay", "Tobias Luetke", "Cody Fauser", "Jimmy Baker"]
    gem.add_dependency "activesupport"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end


desc "Default Task"
task :default => 'test:units'
task :test => ['test:units','test:remote']

# Run the unit tests

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.pattern = 'test/unit/**/*_test.rb'
    t.ruby_opts << '-rubygems'
    t.verbose = true
  end

  Rake::TestTask.new(:remote) do |t|
    t.pattern = 'test/remote/*_test.rb'
    t.ruby_opts << '-rubygems'
    t.verbose = true
  end
end

# Genereate the RDoc documentation
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "ActiveShipping library"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README', 'CHANGELOG')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
