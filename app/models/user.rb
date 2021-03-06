class User < ApplicationRecord
    has_many :invites
    has_many :events, through: :invites

    has_many :hosted_events, foreign_key: "user_id", class_name: "Event"

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Friendship'
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Friendship'
    has_many :followers, through: :following_users

    has_secure_password

end
