class AddKeyToEnrollments < ActiveRecord::Migration[5.1]
  def change
    add_column :enrollments, :key, :string
  end
end
