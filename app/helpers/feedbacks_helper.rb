module FeedbacksHelper

  def get_feedbacks(u)
    en = u.enrollments
    en.map { |e|
      return e.received_feedbacks
    }
  end


end
