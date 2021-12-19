class Vgame < ApplicationRecord
  validates :title, presence: true

  has_many :vgame_variants
  has_many :genres, through: :vgame_genres
end
