class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :categories, dependent: :destroy

  validates :user_id, presence: true
  validates :photo, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :brand, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :lending_fee, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
