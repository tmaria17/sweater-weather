class User < ApplicationRecord
  validates_presence_of :email, :password
  # validates_uniqueness_of :email
  has_secure_password

  def user_key
    SecureRandom.urlsafe_base64
  end
end
