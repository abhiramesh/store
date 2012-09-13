class Brand < ActiveRecord::Base
   attr_accessible :name, :gender, :image

   has_many :preferences
   has_many :users, through: :preferences
end
