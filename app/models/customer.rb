class Customer < ApplicationRecord
  has_many :videogames
  validates :name, presence: true
  validates :password, presence: true
end
