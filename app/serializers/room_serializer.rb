class RoomSerializer < ActiveModel::Serializer
  attributes :id, :home_type, :room_type, :capacity, :bed_rooms, :bath_rooms, :listing_name, :summary, :address, :price, :active
  has_many :reservations
  has_many :reviews
end
