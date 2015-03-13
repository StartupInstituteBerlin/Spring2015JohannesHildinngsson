class Reservation < ActiveRecord::Base
  has_many :restaurants
  validates :lastname, presence: true
  validates :email, presence: true
  validates :date, presence: true

 


end
