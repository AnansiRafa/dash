class Feedback < ApplicationRecord
  belongs_to :teacher, class_name: 'Enrollment'
  belongs_to :student, class_name: 'Enrollment'
  # validates :teacher, uniqueness: {scope: :student}
end
