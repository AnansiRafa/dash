class RemoveUniqueFromFeedbacks < ActiveRecord::Migration[5.1]
  def change
  remove_index :feedbacks, column: [:teacher_id, :student_id]
  end
end
