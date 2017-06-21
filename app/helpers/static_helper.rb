module StaticHelper
  def listing_link(room)
    content_tag(:a, "#{room.city.name}, #{room.city.country} - #{room.listing_name} - #{room.summary}", href: room_path(room))
  end
end
