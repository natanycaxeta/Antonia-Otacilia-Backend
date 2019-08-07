class User < ApplicationRecord
    has_many :posts, through: :user_post
    has_secure_password
end
