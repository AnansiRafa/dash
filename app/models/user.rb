class User < ApplicationRecord
  has_many :enrollments

  has_many :messages, dependent: :destroy

  has_many :authored_conversations,
   class_name: 'Conversation', foreign_key: 'author_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'receiver_id'

  before_save { self.email = email.downcase }

  valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates(:name, presence: true, length: { minimum: 2, maximum: 25  })

  validates(:email, presence: true, format: { with: valid_email }, length: {minimum: 5, maximum: 25}, uniqueness: { case_sensitive: false})

  validates :password_digest, presence: true, length: { minimum: 6 }

  has_secure_password
end
