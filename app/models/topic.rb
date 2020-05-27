class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, length: { maximum: 140 }
  validates :image, presence: true
  
  belongs_to :user
  has_many :favorites
  mount_uploader :image, ImageUploader
  has_many :favorite_users, through: :favorites, source: 'user'

end
