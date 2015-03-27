# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




["Swedish","Buffet","Indian","Hamburger"].each do  |r|
  Category.create(category_name: r)
end



Restaurant.create([    
    {
     name:"Cool r", 
     description: "Best restaurant!!!!", 
     phonenumber: "124124", 
     address: "Alexanderplatz" , 
     category_id:  Category.limit(1).order("RANDOM()").pluck(:id).first,
     user_id: 1
    },
    {
     name:"The best r", 
     description: "really the best restaurant!!!!", 
     phonenumber: "124124", 
     address: "Alexanderplatz",
     category_id:  Category.limit(1).order("RANDOM()").pluck(:id).first,
     user_id: 1
     },
     
     {
     name:"Gosssssssoood r", 
     description: "Best restaurant!!!!", 
     phonenumber: "124124", 
     address: "Alexanderplatz",
     category_id: Category.limit(1).order("RANDOM()").pluck(:id).first,
     user_id: 1
     }   


])

User.create([ 
  {
   email: "jh@jh.se", 
   password: "testtest", 
   password_confirmation: "testtest", 
   role: "owner"
  },
  
  {
   email: "a@a.se", 
   password: "testtest", 
   password_confirmation: "testtest", 
   role: "patron"
  }
])















