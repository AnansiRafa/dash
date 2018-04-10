module CoursesHelper

  def get_courses(u)
      en = u.enrollments
      en.map { |e|
       e.course
      }
  end
end
