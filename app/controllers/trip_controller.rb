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
    session[:origin] = origin
    session[:destination] = destination
    distance = calculate_distance
    session[:distance] = distance
    Driver.where(location_id: origin).each do |driver|
      cost = calculate_cost(driver.fare)
      trip = Trip.new(driver: driver , cost: cost, origin_id: origin,
                      destination_id: destination , distance: distance)
      @allTrips[driver.id] = trip
  end

  end

  def selected_trip
    if !params[:driver].nil?
      session[:driver] = params[:driver].to_i
    else
      redirect_to :controller => 'trip', :action => 'new'
    end
  end

  def finish_trip
    driver = Driver.find(session[:driver])
    cost = calculate_cost(driver.fare)
    driver.update_balance(cost)
    location = Location.find(session[:destination].to_i)
    driver.update_location(location.id)
    driver.rating.add(params[:rating].to_i)
    passenger = current_passenger
    passenger.update_balance(cost)
    passenger.update_miles(session[:distance])
    redirect_to :controller => 'welcome', :action => 'index'
  end

  private

  def calculate_distance
    origin = Location.find(session[:origin].to_i)
    destination = Location.find(session[:destination].to_i)
    Math.sqrt((origin.x_coordinate - destination.x_coordinate)**2 +
              (origin.y_coordinate - destination.y_coordinate)**2).abs.round(2)
  end

  def calculate_cost(fare)
    (session[:distance] * fare).round(2)
  end
end
