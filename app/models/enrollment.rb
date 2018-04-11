class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  # validates :user_id, presence: true
  # validates :course_id, presence: true
  # validates :role_id, presence: true
  belongs_to :student, optional: true
  has_many :sent_feedbacks,
   class_name: 'Feedback', foreign_key: 'teacher_id', dependent: :destroy
  has_many :received_feedbacks, class_name: 'Feedback', foreign_key: 'student_id', dependent: :destroy

end
