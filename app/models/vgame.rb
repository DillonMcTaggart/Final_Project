class Vgame < ApplicationRecord
  paginates_per 3
  has_one_attached :image

  validates :title, presence: true

  has_many :vgame_variants
  has_many :vgame_genres
  has_many :genres, through: :vgame_genres
end
