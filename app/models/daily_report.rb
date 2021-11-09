class DailyReport < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.search(search)
    ret = DailyReport.all
    ret = ret.where(user_id: search[:user_id]) if search[:user_id] != ''
    ret = ret.where(customer_id: search[:customer_id]) if search[:customer_id] != ''
    ret
  end

  validates :content, presence: true
  validates :start_time, presence: true
end
