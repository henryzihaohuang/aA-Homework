class User < ApplicationRecord
    attr_reader :password
    
    validates :username, :session_token, presence: true

    validates :session_token,:username, uniqueness: true

    validates :password_digest, presence: {message: "Password cannot be blank"}

    validates :password, length: { minimum: 3}, allow_nil:true

    before_validation :ensure_session_token, :ensure_session_token_uniqeuness


    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil unless user
        # password_hash = BCrypt::Password.new(password)
        # return user if password_hash == user.password_digest
        return user if BCrypt::Password.new(user.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token
        self.session_token = self.generate_session_token
        self.save!
    end

    def ensure_session_token
        self.session_token ||=  self.generate_session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password) 
    end


end
