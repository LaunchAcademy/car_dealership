class CarListingsController < ApplicationController
  def new
    @car_listing = CarListing.new
  end

  def create
    @car = Car.find_or_initialize_by(name: car_params[:name])
    @car_listing = @car.car_listings.build(car_listing_params)
    @car_listing.dealership = Dealership.default

    if @car.save
      redirect_to root_path, notice: 'Car created successfully!'
    else
      flash.now[:notice] = 'Listing could not be added'
      render :new
    end
  end

  protected

  def car_listing_params
    params.require(:car_listing).permit(:price)
  end

  def car_params
    params.require(:car).permit(:name)
  end
end
