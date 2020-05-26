class User < ApplicationRecord
  validates :name, presence: true,uniqueness: true, length: {in: 2..15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  
  has_secure_password
  
  has_many :topics
end