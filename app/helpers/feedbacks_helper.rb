module FeedbacksHelper

  def find_course(f)
    return Course.find(Enrollment.find(f.teacher_id).course_id).name
  end


end
