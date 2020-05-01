class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, through: :posts

    has_many :followed, :class_name => 'Friend', 
        :foreign_key => 'follow_id'
    has_many :followers, :class_name => 'Friend', 
        :foreign_key => 'follower_id'

end
