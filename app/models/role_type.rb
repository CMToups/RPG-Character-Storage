class RoleType < ActiveRecord::Base
	
	has_many :role, :dependent => :destroy
	has_many :effect, :as => :effector, :dependent => :destroy
	has_and_belongs_to_many :skill 
	has_and_belongs_to_many :feat 


   def features
     effect
   end
   
end
