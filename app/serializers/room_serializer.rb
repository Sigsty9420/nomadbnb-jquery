class RoomSerializer < ActiveModel::Serializer
  attributes :id, :listing_name
  has_many :reservations
  has_many :reviews
end
