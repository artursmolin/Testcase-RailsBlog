module Admin
  class TagsController < Admin::ApplicationController
    def find_resource(param)
      Tag.friendly.find(param)
    end
  end
end
