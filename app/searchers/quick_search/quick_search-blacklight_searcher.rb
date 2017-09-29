module QuickSearch
  class BlacklightSearcher < QuickSearch::Searcher

    def search
      @response = search_results({query: http_request_queries["not_escaped"]})
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

    def title(record)
      record.fetch()'title_display', []).first
    end

    def author(record)
      record.fetch()'creator_display', []).first
    end

    def link(record)
       record[Rails.application.routes.url_helpers.solr_document_url(item["id"], :only_path => true)]
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
