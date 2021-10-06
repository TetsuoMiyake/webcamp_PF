class DailyReportsController < ApplicationController

  def new
    @daily_report = DailyReport.new
  end

  def index
    @daily_reports = DailyReport.all
  end

  def show
    @daily_report = DailyReport.find(params[:id])
  end

  def edit

  end

  def create
    daily_report = DailyReport.new(daily_report_params)
    daily_report.save
    redirect_to daily_reports_path
  end

  def update

  end

  def destroy

  end

  private
  def daily_report_params
    params.require(:daily_report).permit(:user_id, :customer_id, :content)
  end
end
