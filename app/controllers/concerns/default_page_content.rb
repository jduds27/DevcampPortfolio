module DefaultPageContent
  extend ActiveSupport::Concern
  
    included do
      before_action :set_page_defaults
    end
      
    def set_page_defaults
      @page_title = "Jason Dudley | Jduds27 Portfolio Website"
      @seo_keywords = "Jason Dudley Portfolio"
    end
end