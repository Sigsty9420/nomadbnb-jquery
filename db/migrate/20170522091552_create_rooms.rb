class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :capacity
      t.integer :bed_rooms
      t.integer :bath_rooms
      t.string :listing_name
      t.text :summary
      t.string :address
      t.integer :price
      t.boolean :active
      t.integer :city_id
      t.integer :user_id

      t.timestamps
    end
  end
end
