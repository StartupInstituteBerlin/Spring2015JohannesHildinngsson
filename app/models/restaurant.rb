class Restaurant < ActiveRecord::Base
  belongs_to  :user
  belongs_to :category
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phonenumber, presence: true
  
 
 
end
