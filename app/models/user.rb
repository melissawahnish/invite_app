  class User < ActiveRecord::Base
 
	has_many :authentications	
  attr_accessible :email, :password_hash, :password_salt, :password_confirmation, :password
  
  attr_accessor :password, :password_confirmation
  before_save :encrypt_password
  
  validates :password, :presence => true
  validates :password_confirmation, :presence => true 
  validates :email, :presence => true, :uniqueness => true

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end



  def apply_omniauth(omniauth)
    self.email = omniauth['user_info']['email'] if email.blank?
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end


end


