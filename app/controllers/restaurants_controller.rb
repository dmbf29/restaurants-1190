class RestaurantsController < ApplicationController

  def top
    @restaurants = Restaurant.where(rating: 1)
  end

  def chef
    @restaurant = Restaurant.find(params[:id])
    # @chef_name = @restaurant.chef_name
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # This empty instance is for the form builder
    @restaurant = Restaurant.new
  end

  # this action DOES NOT have a view
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      # display the form page again
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # this is for the form builder
    @restaurant = Restaurant.find(params[:id])
  end

  # this action DOES NOT have a view
  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      # display the form page again
      render :edit, status: :unprocessable_entity
    end
  end

  # this action DOES NOT have a view
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # status is for turbo
    redirect_to restaurants_path, status: :see_other
  end

  private

  # strong params -> white listing the info coming from the form
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
