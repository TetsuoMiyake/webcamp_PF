class CommentsController < ApplicationController
  def create
    daily_report = DailyReport.find(params[:daily_report_id])
    comment = current_user.comments.new(comment_params)
    comment.daily_report_id = daily_report.id
    if comment.save
      redirect_to daily_report_path(daily_report)
    else
      redirect_to daily_report_path(daily_report), flash: { danger: 'コメント入力してください。' }
    end
  end

  def destroy; end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
