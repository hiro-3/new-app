class Topic < ApplicationRecord
  
  mount_uploader :image,ImageUploader
  mount_uploader :image1,ImageUploader
  mount_uploader :image2,ImageUploader
  
  validates :user_id, presence: true
  validates :image, presence: true
  validates :image1, presence: true
  validates :image2, presence: true
  validates :description, presence: true
  
  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
 
end 