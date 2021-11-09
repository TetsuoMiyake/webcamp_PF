class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :daily_report

  validates :comment, presence: true
end
