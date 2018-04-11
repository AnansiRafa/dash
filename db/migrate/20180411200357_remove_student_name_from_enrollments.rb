class RemoveStudentNameFromEnrollments < ActiveRecord::Migration[5.1]
  def change
    remove_column :enrollments, :student_name, :string
  end
end
