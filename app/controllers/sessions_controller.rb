class SessionsController < ApplicationController
include ApplicationHelper



  def new
    if logged_in?
      send_home
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if params[:session][:teacher_or_student] == "Teacher"
        log_in user
        respond_to do |format|
        format.html { redirect_to courses_path, notice: "You've signed in as a teacher." }
      end
      else
        log_in user
        respond_to do |format|
        format.html { redirect_to dashboard_path, notice: "You've signed in as a parent" }
      end
      end
      # redirect_to root_url
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end


  def destroy
    log_out
    redirect_to root_url
  end
end
