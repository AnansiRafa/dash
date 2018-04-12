class StudentsController < ApplicationController
  def index
    @e = current_user.enrollments
  end
end
