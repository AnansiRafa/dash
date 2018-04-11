class DashboardController < ApplicationController
  def index
    @courses = current_user.courses
    @conversations = Conversation.participating(current_user).order('updated_at DESC')
    @feedbacks = current_user.received_feedbacks
  end
end
