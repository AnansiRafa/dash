class Post < ApplicationRecord
  belongs_to :course
<<<<<<< HEAD
  belongs_to :enrollment
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :post_comments
  has_many :comments, through: :post_comments
=======
>>>>>>> 8a536953aef8c96fecc8aaf1df5b3bd7f0013330

  validates :title, presence: true,
                length: { minimum: 4, maximum: 20 }

  validates :description, presence: true,
                      length: { maximum: 1000 }
  validates :user_id, presence: true
end
