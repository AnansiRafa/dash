class SessionsController < ApplicationController
include ApplicationHelper
after_action :set_role, only: [:create]


  def new
    if logged_in?
      send_home
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    respond_to do |format|
    if user && user.authenticate(params[:session][:password])
      if params[:session][:teacher_or_student] == "Teacher"
        log_in user
        format.html { redirect_to courses_path, notice: "You've signed in as a teacher." }
      else
        log_in user
        format.html { redirect_to dashboard_path, notice: "You've signed in as a parent" }
      end
      # redirect_to root_url
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end
end

  def destroy
    log_out
    redirect_to root_url
  end
end
