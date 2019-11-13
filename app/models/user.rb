class User < ApplicationRecord
    has_many :users_campaigns
    has_many :campaigns, through: :users_campaigns

    has_secure_password

    validates :username, uniqueness: true
end
