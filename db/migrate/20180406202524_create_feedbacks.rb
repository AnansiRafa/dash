class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
    add_index :feedbacks, :teacher_id
    add_index :feedbacks, :student_id
    add_index :feedbacks, [:teacher_id, :student_id], unique: true
  end
end
