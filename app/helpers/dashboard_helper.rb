module DashboardHelper

  def get_feedbacks(student)
    student.enrollments.map do |e|
      return e.received_feedbacks
    end
  end
end
