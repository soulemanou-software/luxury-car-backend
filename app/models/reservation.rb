class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :user, presence: true
  validates :reservation_date, presence: true
  validates :lending_fee, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
