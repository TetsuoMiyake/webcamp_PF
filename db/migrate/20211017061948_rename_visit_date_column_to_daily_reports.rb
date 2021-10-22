class RenameVisitDateColumnToDailyReports < ActiveRecord::Migration[5.2]
  def change
    rename_column :daily_reports, :visit_date, :start_time
  end
end
