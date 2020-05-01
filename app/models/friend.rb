class Friend < ApplicationRecord
    belongs_to :follow, :class_name => 'User', 
        :foreign_key => 'follow_id'
    belongs_to :follower, :class_name => 'User', 
        :foreign_key => 'follower_id'
end