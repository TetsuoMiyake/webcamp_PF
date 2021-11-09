class Item < ApplicationRecord
  attachment :image
  has_many :suggest_items, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :content, presence: true
  validates :image, presence: true
end
