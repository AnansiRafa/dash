class Course < ApplicationRecord
    has_many :enrollments
    has_many :posts
end
