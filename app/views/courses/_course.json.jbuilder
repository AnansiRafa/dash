json.extract! course, :id, :name, :grade, :school_year, :semester, :period, :created_at, :updated_at
json.url course_url(course, format: :json)
