class Game < ApplicationRecord
    has_many :gamecards
    has_many :users, through: :gamecard
end
