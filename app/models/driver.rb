class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :location
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
