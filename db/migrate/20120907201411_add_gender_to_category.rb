class AddGenderToCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :gender, :boolean
  	add_column :categories, :image, :string
  end
end
