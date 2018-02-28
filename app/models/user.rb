class User < ApplicationRecord
  has_many :microposts
  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255}

  has_secure_password
  validates :password, length: {minimum: 2}
end
