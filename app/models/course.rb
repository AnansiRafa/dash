class Course < ApplicationRecord
    has_many :enrollments, dependent: :destroy
    has_many :posts, dependent: :destroy
end
