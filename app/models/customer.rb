class Customer < ApplicationRecord
  belongs_to :user
  has_many :daily_reports, dependent: :destroy
  has_many :suggest_items, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
