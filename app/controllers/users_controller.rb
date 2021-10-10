class UsersController < ApplicationController
  def show
    customers = Customer.all
    @customers = current_user.customers

    daily_reports = DailyReport.all
    @daily_reports = current_user.daily_reports
  end
end
