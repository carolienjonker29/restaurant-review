class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurants.all
  end

  def create
    @restaurant = Restaurant.new
  end

  def new
    @restaurant = Restaurant.new
    restaurant.save!
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    restaurant.update
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    restaurant.destroy
  end

  def top
    @restaurants = Restaurant.where(stars: 3)
  end

  def chef
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
