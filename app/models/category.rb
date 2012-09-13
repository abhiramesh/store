class Category < ActiveRecord::Base
  attr_accessible :name, :gender, :image

  has_many :likes
  has_many :users, through: :likes 
end
