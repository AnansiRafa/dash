module DashboardHelper

  def get_feedbacks(student)
    student.enrollments.map do |e|
      # return e.received_feedbacks
      # expecting a string back, given an array
    end
  end
end
