class AddEnrollmentIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :enrollment_id, :integer
  end
end
