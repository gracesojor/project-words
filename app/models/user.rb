class User < ApplicationRecord

  before_save { self.email = email.downcase }

  mount_uploader :avatar, AvatarUploader

  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: {maximum: 50},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  
  
  def full_name
    "#{first_name} #{last_name}"
  end


end
