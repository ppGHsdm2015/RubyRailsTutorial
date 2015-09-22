class User < ActiveRecord::Base
    
   validates :username, presence: true	
   validates :password, presence: true
   validates :fullname,	presence: true
   validates :email, presence: true
   validates :affiliation, presence: false
   validates :roleID, presence: true 
   validates :gender, presence: false
   validates :age, presence: false
end  