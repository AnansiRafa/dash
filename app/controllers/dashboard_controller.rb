class DashboardController < ApplicationController
  include DashboardHelper
  before_action :get_student, only: [:index]
  def index
    @feedbacks = @student.get_feedbacks
    @courses = current_user.courses
    @conversations = Conversation.participating(current_user).order('updated_at DESC')
  end

  private
  def get_student
    @student = Student.find(params[:student_id])
  end
end
