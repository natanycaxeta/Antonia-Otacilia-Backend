class Post < ApplicationRecord
    has_many :users, through: :user_post
end
