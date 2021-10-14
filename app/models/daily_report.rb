class DailyReport < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.search(search)
    if search != ""
      DailyReport.where(user_id: search[:user_id]).order(visit_date: :desc) 
    else
      DailyReport.all
    end
  end
end
