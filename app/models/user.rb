class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    validates :email, presence: true
    attr_accessor :password_confirmation
end
