Rails.application.routes.draw do
  mount QuickSearch::BlacklightSearcher::Engine => "/quick_search-blacklight_searcher"
end
