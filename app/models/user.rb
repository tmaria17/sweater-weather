class User < ApplicationRecord
  after_save :user_key
  validates_presence_of :email, :password
  has_secure_password
  has_many :favorites

  def user_key
    if api_key.nil?
      update(api_key: SecureRandom.urlsafe_base64)
    else
     SecureRandom.urlsafe_base64
   end
  end
end
