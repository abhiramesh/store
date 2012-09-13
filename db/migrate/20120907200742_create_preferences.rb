class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
    	t.integer :user_id
    	t.integer :brand_id

      t.timestamps
    end
  end
end
