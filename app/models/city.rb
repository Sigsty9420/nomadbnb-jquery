class City < ApplicationRecord
  has_many :rooms
  has_many :users, through: :rooms
  validates :name, presence: true
  validates :country, presence: true

  def self.country_list
    City.pluck(:country).uniq
  end
end
