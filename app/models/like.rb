 class Like < ActiveRecord::Base
  attr_accessible :user_id, :category_id, :category
  
  belongs_to :user
  belongs_to :category
end
