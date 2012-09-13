class AddBrandToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :lacoste, :boolean
  	add_column :users, :ralphlauren, :boolean
  	add_column :users, :americanapparel, :boolean
  	add_column :users, :handm, :boolean
  	add_column :users, :jcrew, :boolean
  	add_column :users, :zara, :boolean
  	add_column :users, :brooksbro, :boolean
  	add_column :users, :express, :boolean
  	add_column :users, :hugoboss, :boolean
  	add_column :users, :calvinklein, :boolean
  	add_column :users, :bananarepublic, :boolean
  	add_column :users, :guess, :boolean
  	add_column :users, :armani, :boolean
  	add_column :users, :diesel, :boolean
  	add_column :users, :lucky, :boolean
  	add_column :users, :levis, :boolean
  	add_column :users, :bonobos, :boolean
  	add_column :users, :other, :boolean


  end
end
