class AddAttendanceToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :attendance, :integer
  end
end
