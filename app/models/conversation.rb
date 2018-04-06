class Conversation < ApplicationRecord
  belongs_to :author, class_name: 'Enrollment'
  belongs_to :receiver, class_name: 'Enrollment'
  validates :author, uniqueness: {scope: :receiver}
  has_many :messages, -> { order(created_at: :asc) }, dependent: :destroy
end
