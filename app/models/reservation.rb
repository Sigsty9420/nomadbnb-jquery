class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :start_date, :presence => {:message => "Must have a check in date." }, uniqueness: :true
  validates_datetime :end_date, :after => :start_date, message: "Checkout must be after checkin date."
end
