class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :grade
      t.string :school_year
      t.string :semester
      t.string :period

      t.timestamps
    end
  end
end
