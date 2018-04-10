module CoursesHelper
  def get_courses(current_user)
      en = current_user.enrollments
      en.map { |e|
       e.course
      }
  end
end
