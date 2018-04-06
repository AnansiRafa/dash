class AddBodyToFeedbacks < ActiveRecord::Migration[5.1]
  def change
    add_column :feedbacks, :body, :text
  end
end
