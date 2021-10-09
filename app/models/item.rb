class Item < ApplicationRecord
  attachment :image
  has_many :suggest_items, dependent: :destroy
end
