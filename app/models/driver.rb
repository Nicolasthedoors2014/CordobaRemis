class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :location
  has_one :rating
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def update_balance(value)
    new_balance = (self.balance + value).round(2)
    self.update(balance: new_balance)
  end

  def update_location(id)
    new_ubication = Location.find(id)
    self.update(location: new_ubication)
  end

end
