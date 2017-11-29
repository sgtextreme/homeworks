class User < ApplicationRecord
  validates :username, presence: true 
  validates :session, presence: true 
  validates :password_digest: presence: true, :message: 'cant be empty'
  validates :password, length: {minimum: 7}, presence: true
  
  def find_by_credentials(username, password)
    user = User.find_by_username(username)
      return nil if user.nil?
      user.is_password?(password) ? user : nil 
    end 
  end 
  
  
  def self.generate_session_token
     SecureRandom::urlsafe_base64(16)
  end 
   
  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end
   
  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
    
  def password=
    
    
  
    
end
