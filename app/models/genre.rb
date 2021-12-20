class Genre < ApplicationRecord
  paginates_per 3
  has_many :vgame_genres
  has_many :vgames, through: :vgame_genres
end
