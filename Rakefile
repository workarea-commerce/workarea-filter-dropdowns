#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path('../test/dummy/Rakefile', __FILE__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task default: :test

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'workarea/filter_dropdowns/version'


desc "Release version #{Workarea::FilterDropdowns::VERSION} of the gem"
task :release do
  host = "https://#{ENV['BUNDLE_GEMS__WEBLINC__COM']}@gems.weblinc.com"

  system "git tag -a v#{Workarea::FilterDropdowns::VERSION} -m 'Tagging #{Workarea::FilterDropdowns::VERSION}'"
  system 'git push origin HEAD --follow-tags'

  system 'gem build workarea-filter_dropdowns.gemspec'
  system "gem push workarea-filter_dropdowns-#{Workarea::FilterDropdowns::VERSION}.gem --host #{host}"
  system "rm workarea-filter_dropdowns-#{Workarea::FilterDropdowns::VERSION}.gem"
end
