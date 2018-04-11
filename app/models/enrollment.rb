class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  # validates :user_id, presence: true
  # validates :course_id, presence: true
  # validates :role_id, presence: true

  has_many :sent_feedbacks,
   class_name: 'Feedback', foreign_key: 'teacher_id'
  has_many :received_feedbacks, class_name: 'Feedback', foreign_key: 'student_id'

  # enum role: [:student, :teacher,]
  #   after_initialize :set_default_role, :if => :new_record?
  #
  #   def set_default_role
  #     self.role ||= :student
  #   end





end
