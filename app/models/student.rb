class Student < ApplicationRecord
  belongs_to :user
  has_many :enrollments
  has_many :get_feedbacks, through: :enrollments, source: :received_feedbacks
end
