class CarsController < ApplicationController
  def index
    @cars = Car.includes(car_listings: :dealership)
  end
end
