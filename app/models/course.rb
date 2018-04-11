class Course < ApplicationRecord
    has_many :enrollments, dependent: :destroy
    has_many :posts, dependent: :destroy
<<<<<<< HEAD
end
=======
    has_many :students, through: :enrollments
  end
>>>>>>> c31f700ca5b33c16dd406c00654fe65e10baa8f7
