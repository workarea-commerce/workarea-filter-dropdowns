$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'workarea/filter_dropdowns/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'workarea-filter_dropdowns'
  s.version     = Workarea::FilterDropdowns::VERSION
  s.authors     = ['bberg']
  s.email       = ['bberg@weblinc.com']
  s.homepage    = 'https://github.com/workarea-commerce/workarea-filter-dropdowns'
  s.summary     = 'Filter Dropdowns plugin for Workarea Commerce platform'
  s.description = 'Transform browse and search filters into dropdowns using jQuery UI Accordion'
  s.files = `git ls-files`.split("\n")
  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'workarea', '~> 3.x'
  s.add_dependency 'workarea-accordions', '~> 3.x'
end
