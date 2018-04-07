class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_user
  before_action :current_user
  protect_from_forgery with: :exception

end
