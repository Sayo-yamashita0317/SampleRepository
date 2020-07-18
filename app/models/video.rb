class Video < ApplicationRecord
    has_many :items, dependent: :destroy
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_tweets, through: :likes, source: :tweet
end
