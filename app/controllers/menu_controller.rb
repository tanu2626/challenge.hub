class MenuController < ApplicationController
  def index
    @section = %w(Breakfast Lunch Dinner Supper)

    @food_items =FoodItem.filter_by_section(params[:section])
  end
end
