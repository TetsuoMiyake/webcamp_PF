class SuggestItem < ApplicationRecord
   belongs_to :item
   belongs_to :customer

     enum status: {
    "提案済": 0,
    "検討中": 1,
    "見積済": 2,
    "価格交渉中": 3,
    "切替済": 4,
    "切替失敗": 5,
  }
end
