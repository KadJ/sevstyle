class PhotosField < ActiveRecord::Migration
  def change
    create_table :photos do |t|  
      t.integer      :hotel_id
      t.string       :description
      t.string       :name
      t.boolean      :main
      t.timestamps
    end  
  end
end
