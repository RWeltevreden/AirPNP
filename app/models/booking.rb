class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validates :item_id, presence: true
end
