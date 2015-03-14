class Restaurant < ActiveRecord::Base
  belongs_to  :user
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phonenumber, presence: true
  
 
 
end
