class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :title
      t.text :detail
      t.string :image_id
      t.string :spot
      t.string :address_city
      t.string :address_street
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
