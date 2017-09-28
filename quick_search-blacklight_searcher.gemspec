$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quick_search/blacklight_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-blacklight_searcher"
  s.version     = QuickSearch::BlacklightSearcher::VERSION
  s.authors     = ["sensei100"]
  s.email       = ["tuh42082@temple.edu"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of QuickSearch::BlacklightSearcher."
  s.description = "TODO: Description of QuickSearch::BlacklightSearcher."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
