class Post < ApplicationRecord
  belongs_to :course
  belongs_to :enrollment

end
