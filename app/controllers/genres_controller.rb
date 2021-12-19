class GenresController < ApplicationController
  def index
    @genres = Genre.joins(:vgames).select('genres.*, count(vgames.id) as vgames_count').group('genres.id').order(:title)
  end
end
