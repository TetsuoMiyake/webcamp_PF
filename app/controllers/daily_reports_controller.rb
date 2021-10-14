class DailyReportsController < ApplicationController
  before_action :set_daily_report, only: [:edit, :show, :destroy, :update]

  def new
    @daily_report = DailyReport.new
  end

  def index
    @daily_reports = DailyReport.all.order(visit_date: :desc)
  end

  def show
    @daily_report = DailyReport.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @daily_report = DailyReport.find(params[:id])
  end

  def create
    daily_report = DailyReport.new(daily_report_params)
    daily_report.save
    redirect_to daily_report_path(daily_report.id)
  end

  def update
    daily_report = DailyReport.find(params[:id])
    daily_report.update(daily_report_params)
    redirect_to daily_report_path(daily_report.id)
  end

  def destroy

  end

  def search
    @daily_reports = DailyReport.search(params)
    render "index"
  end

  private
  def daily_report_params
    params.require(:daily_report).permit(:user_id, :customer_id, :content, :visit_date)
  end

  def set_daily_report
    @daily_report = DailyReport.find(params[:id])
  end
end
