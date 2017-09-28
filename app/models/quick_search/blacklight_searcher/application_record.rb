module QuickSearch
  module BlacklightSearcher
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
