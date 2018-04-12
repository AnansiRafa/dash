module DashboardHelper

  def get_feedbacks(student)
    student.enrollments.map do |e|
      #DO NOT UNCOMMENT
      # return e.received_feedbacks
      # expecting a string back, given an array
    end
  end
end
