class Item < ApplicationRecord

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :bookings
  has_many :bookings, dependent: :destroy

  belongs_to :user
  has_many :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :photo, presence: true

  def self.search(query)
    where("name LIKE ?", "%#{query}%")
  end

end
