class User < ApplicationRecord
    has_many :posts, through: :user_post
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
