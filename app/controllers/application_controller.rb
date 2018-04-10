class ApplicationController < ActionController::Base
  include SessionsHelper
  include ApplicationHelper
  helper_method :current_user
  helper_method :send_home
  before_action :current_user
  protect_from_forgery with: :exception
private
  def confirm_signed_in
    make_sign_in unless logged_in?
  end

end
