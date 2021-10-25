class DailyReport < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.search(search)
    ret = DailyReport.all
    if search[:user_id] != ""
      ret = ret.where(user_id: search[:user_id])
    end
    if search[:customer_id] != ""
      ret = ret.where(customer_id: search[:customer_id])
    end
    return ret
  end
end
