class Vgame < ApplicationRecord
  validates :title, presence: true

  has_many :vgame_genres
  has_many :genres, through: :vgame_genres
end
