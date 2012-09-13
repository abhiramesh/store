class Preference < ActiveRecord::Base
   attr_accessible :user_id, :brand_id 

   belongs_to :user
   belongs_to :brand
end
