class CreateDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_reports do |t|
      t.integer :user_id
      t.integer :customer_id
      t.text :content

      t.timestamps
    end
  end
end
