module Admin
  class CategoriesController < Admin::ApplicationController
    def find_resource(param)
      Category.friendly.find(param)
    end
  end
end
