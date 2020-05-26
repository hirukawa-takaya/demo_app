class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, length: { maximum: 140 }
  validates :image, presence: true
  
  belongs_to :user
  mount_uploader :image, ImageUploader
end
