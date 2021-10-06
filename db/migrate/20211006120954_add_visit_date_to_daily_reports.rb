class AddVisitDateToDailyReports < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_reports, :visit_date, :datetime
  end
end
