class PassengersController < ApplicationController
before_action :authenticate_passenger!


  def show
    begin
      @user = Passenger.find(params[:id])
      unless @user == current_passenger
        redirect_to passenger_url(current_passenger), :alert => "Access denied."
      end
    rescue ActiveRecord::RecordNotFound => e
      redirect_to passenger_url(current_passenger), :alert => "Access denied."
    end
  end

end
