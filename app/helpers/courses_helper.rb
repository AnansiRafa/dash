module CoursesHelper

  def get_courses(u)
      en = u.enrollments
      en.each { |e|
        return e.received_feedbacks
      }
  end
end
