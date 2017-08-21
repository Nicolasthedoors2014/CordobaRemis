class TripController < ApplicationController
   before_action :authenticate_passenger!, except:[:new]

  def new
    @locations = Location.all
  end

  def create
    @allTrips = Hash.new
    origin_id = params[:origin]
    destination_id = params[:destination]

     Driver.where(location_id: origin_id).each do |driver|
      trip = Trip.new(driver_id: driver ,cost: 5, origin_id: origin_id, destination_id: destination_id ,distance:2)
      @allTrips[driver.id] = trip
    end

  end

  def selectedTrip
    render plain: params.inspect
  end


end
