class HotelModule < ActiveRecord::Migration
  def change
    create_table :hotels do |t|      
      t.float   :cost
      t.string  :title
      t.boolean :breakfast
      t.float   :start_rating
      t.string  :description
      t.timestamps
    end
    add_index :hotels, :title    
  end
end
