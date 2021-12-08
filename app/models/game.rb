class Game < ApplicationRecord
    has_one_attached :image
    has_many :game_review, -> { order "created_at DESC"}
end
