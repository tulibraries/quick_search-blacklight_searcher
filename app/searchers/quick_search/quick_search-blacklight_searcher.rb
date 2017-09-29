module QuickSearch
  class BlacklightSearcher < QuickSearch::Searcher

    def search
      @response = search_results({q: http_request_queries["not_escaped"]})
    end

    def results
      if results_list
        results_list
      else
        @results_list = []
        @response.each do |record|
          result = OpenStruct.new
          result.title = title(record)
          result.link = link(record)
          result.author = author(record)
          @results_list << result
        end
        @results_list
      end
    end

    def search_results(args)
      SearchHelperWrapper.search_results(args).first["response"]["docs"]
    end
  end
end

class SearchHelperWrapper
  include Blacklight::SearchHelper

  def blacklight_config
    CatalogController.blacklight_config
  end

  def self.search_results(args)
     self.new.search_results(args)
  end
end
