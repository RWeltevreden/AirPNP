class Item < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_many :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :photo, presence: true

end
