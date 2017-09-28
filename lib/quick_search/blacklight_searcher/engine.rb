module QuickSearch
  module BlacklightSearcher
    class Engine < ::Rails::Engine
      isolate_namespace QuickSearch::BlacklightSearcher
    end
  end
end
