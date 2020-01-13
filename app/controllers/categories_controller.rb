class CategoriesController < ApplicationController
  skip_before_action:logged_in_user
  
  def index
    @parents = Category.all.order("id ASC").offset(90)
  end
end
