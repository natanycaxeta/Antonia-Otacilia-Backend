class User < ApplicationRecord
    # has_many :user_posts
    # has_many :posts, through: :user_posts
    has_many :posts
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
