class User < ApplicationRecord
    has_many :gamecards
    has_many :games, through: :gamecards
end
