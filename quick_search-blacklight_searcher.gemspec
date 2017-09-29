$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quick_search/blacklight_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-blacklight_searcher"
  s.version     = QuickSearch::BlacklightSearcher::VERSION
  s.authors     = ["Jennifer Anton"]
  s.email       = ["jennifer.anton@temple.edu"]
  s.homepage    = "https://github.com/tulibraries/quick_search-blacklight_searcher"
  s.summary     = "Summary of QuickSearch::BlacklightSearcher."
  s.description = "Plugin for quick_search for searching Blacklight."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.4"
  s.add_dependency "quick_search-core"
  s.add_development_dependency "sqlite3"
end
