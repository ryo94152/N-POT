class CategoriesController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").offset(90)
  end
end
