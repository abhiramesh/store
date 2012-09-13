class AddGenderToBrands < ActiveRecord::Migration
  def change
  	add_column :brands, :gender, :boolean
  	add_column :brands, :image, :string
  end
end
