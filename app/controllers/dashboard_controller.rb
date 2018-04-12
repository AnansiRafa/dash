class DashboardController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @courses = current_user.courses
    @conversations = Conversation.participating(current_user).order('updated_at DESC')
    @feedbacks = current_user.received_feedbacks
  end
end
