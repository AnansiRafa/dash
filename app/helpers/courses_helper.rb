module CoursesHelper
  include SessionsHelper
  include ApplicationHelper

  

  def give_course(course)
    if logged_in?
      e = Enrollment.new(course_id:course.id, role_id: 2, user_id: current_user.id)
      e.save
    else
      make_sign_in
    end

  end

  def give_course_token
    #associates the current user with the selected course
    e = Enrollment.find(params[:student_id])
    c = Course.find(e.course_id)
    ce = c.enrollments
    ue = ce.where(user_id: current_user.id)
    ue = ue.first.id
    return ue
  end

end
