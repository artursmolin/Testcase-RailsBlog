module Admin
  class NewsController < Admin::ApplicationController
    def find_resource(param)
      News.friendly.find(param)
    end
  end
end
