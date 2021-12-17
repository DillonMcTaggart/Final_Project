class Videogame < ApplicationRecord
  belongs_to :customers
  validates :name, :platform, :genre, :publisher, presence: true
  validates :rank, :year, numericality: { only_integer: true }
  validates :global_sales, numericality: true
end
