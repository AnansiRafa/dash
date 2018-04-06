class Feedback < ApplicationRecord
  belongs_to :teacher, class_name: 'Enrollment'
  belongs_to :student, class_name: 'Enrollment'
  validates :author, uniqueness: {scope: :receiver}
end
