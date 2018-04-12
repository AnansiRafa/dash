class ApplicationController < ActionController::Base
  include SessionsHelper
  include ApplicationHelper
  helper_method :current_user
  helper_method :send_home
  # helper_method :set_role
  before_action :current_user
  # before_action :set_role
  protect_from_forgery with: :exception
private
  def confirm_signed_in
    make_sign_in unless logged_in?
  end

end
