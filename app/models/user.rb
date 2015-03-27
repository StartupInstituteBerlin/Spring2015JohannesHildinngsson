class User < ActiveRecord::Base
  has_many :restaurants 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def owner?
  
    User.where(role: "owner").where(id: current_user.id).limit(1)

  
  end
  
  def patron?
  
    User.where(role: "patron").where(id: current_user.id).limit(1)
    
  end
end
