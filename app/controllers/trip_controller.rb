class TripController < ApplicationController
   before_action :authenticate_passenger!, except:[:new]
   #validates :

  def new
    @locations = Location.all
  end

  def create
    @allTrips = Hash.new
    origin = params[:origin]
    destination = params[:destination]

     Driver.where(location_id: origin).each do |driver|
      trip = Trip.new(driver: driver ,cost: 5, origin_id: origin, destination_id: destination ,distance:2)
      @allTrips[driver.id] = trip
    end

  end

  def selectedTrip

    render plain: params.inspect
  end

  private

  def distance

  end




end
