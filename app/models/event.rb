class Event < ApplicationRecord
    has_many :invites
    has_many :users, through: :invites

    belongs_to :user
end
