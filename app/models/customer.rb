class Customer < ApplicationRecord
  belongs_to :user
  has_many :daily_reports, dependent: :destroy
  has_many :suggest_items, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :name, presence: true
  validates :address, presence: true
  validates :postal_code, presence: true
  validates :telephone_number, presence: true
end
