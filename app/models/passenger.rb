class Passenger < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def update_balance(value)
    new_balance = (self.balance - value).round(2)
    self.update(balance: new_balance)
  end

  def update_miles(value)
    new_miles = (self.miles + value).round(2)
    self.update(miles: new_miles)
  end


end
