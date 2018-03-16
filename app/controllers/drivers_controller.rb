class DriversController < ApplicationController

  def show
    begin
      @user = Driver.find(params[:id])
      unless @user == current_driver
        redirect_to driver_url(current_driver), :alert => "Access denied."
      end
    rescue ActiveRecord::RecordNotFound => e
      redirect_to driver_url(current_driver), :alert => "Access denied."
    end
  end
end
