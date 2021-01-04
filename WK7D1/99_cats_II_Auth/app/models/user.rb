class User < ApplicationRecord
  validates :username, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true 
  validates :password, allow_nil: true
  after_initialize :ensure_session_token

  attr_reader

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64 
    #assigns it             random string generated 
  end

  def reset_session_token! 
    self.session_token = SecureRandom::urlsafe_base64 
    # we want to change the session_token 
    self.save! #we want to fail LOUDLY

    self.session_token #we want to return this value via the getter method 
  end

  def password=(password)
    password_digest = BCrypt::Password.create(password)

    @password = password
  end

end
