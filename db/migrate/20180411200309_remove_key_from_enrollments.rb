class RemoveKeyFromEnrollments < ActiveRecord::Migration[5.1]
  def change
    remove_column :enrollments, :key, :string
  end
end
