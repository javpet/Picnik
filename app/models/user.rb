class User < ApplicationRecord

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_secure_password

  def gravatar_image
    encrypted_email = Digest::MD5.hexdigest(self.email.downcase)
    "https://www.gravatar.com/avatar/#{encrypted_email}.jpg?s=48"
  end

end
