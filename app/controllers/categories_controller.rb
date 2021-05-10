class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
    json_response(@categories)
  end

  def show
    json_response(@category)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end
end
