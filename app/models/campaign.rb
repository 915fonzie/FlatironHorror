class Campaign < ApplicationRecord
    has_many :users_campaigns
    has_many :users, through: :users_campaigns
    has_many :storylines
end
