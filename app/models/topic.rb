class Topic < ApplicationRecord
  
  mount_uploader :image,ImageUploader
  
  
  validates :user_id, presence: true
  validates :image, presence: true
  validates :description, presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorite_users(user_id)
    favorites.find_by(user_id: user_id)
  end  
  
end 