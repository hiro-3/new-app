class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*\d)[a-z\d]{8,32}+\z/i
  validates :password, presence: true, length: {minimum: 2, maximum: 32},
  format: { with: VALID_PASSWORD_REGEX}
  
  has_secure_password
  
  has_many :comments
  has_many :votes
  has_many :topics
  has_many :favorites
  
end
