module FeedbacksHelper

  def get_received_feedbacks(u)
    en = u.enrollments
    en.each { |e|
      return e.received_feedbacks
    }
  end

  def get_sent_feedbacks(u)
    en = u.enrollments
    en.each { |e|
      return e.sent_feedbacks
    }
  end

  def find_course(f)
    return Course.find(Enrollment.find(f.teacher_id).course_id).name
  end


end
