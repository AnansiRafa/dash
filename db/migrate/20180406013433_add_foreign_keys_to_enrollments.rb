class AddForeignKeysToEnrollments < ActiveRecord::Migration[5.1]
  def change
    change_table :enrollments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :course, foreign_key: true
  end
end
