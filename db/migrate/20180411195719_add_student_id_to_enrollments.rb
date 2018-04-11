class AddStudentIdToEnrollments < ActiveRecord::Migration[5.1]
  def change
    add_reference :enrollments, :student, foreign_key: true
  end
end
