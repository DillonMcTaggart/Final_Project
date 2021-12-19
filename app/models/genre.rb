class Genre < ApplicationRecord
  has_many :vgame_genres
  has_many :vgames, through: :vgame_genres
end
