class CategoriesController < ApplicationController 
  def index
    @categories = Category.all_categories
  end
  
  def show
    @category = Category.find(params[:id])
  end
end
