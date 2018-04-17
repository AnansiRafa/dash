module CoursesHelper
  include SessionsHelper
  include ApplicationHelper



  def give_course(course)
    if logged_in?
      e = Enrollment.create(course_id:course.id, role_id: 2, user_id: current_user.id)
    else
      make_sign_in
    end
  end

  def give_course_token
    #associates the current user with the selected course
    e = Enrollment.where(student_id: params[:student_id])
    # g = f
    # c = e.first.course
    # ce = c.enrollments
    # ue = ce.where(user_id: current_user.id)
    # ue = ue.first.id
    # return ue
  end

end
