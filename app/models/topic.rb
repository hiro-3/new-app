class Topic < ApplicationRecord
  
  mount_uploader :image,ImageUploader
  
  
  validates :user_id, presence: true
  validates :image, presence: true
  validates :description, presence: true
  
  belongs_to :user
  has_many :favorites
  has_many :comments
  has_many :favorite_users, through: :favorites, source: 'user'
  
end 