class GenresController < ApplicationController
  def index
    @genres = Genre.all # joins(:vgames).select('genres.*, count(vgames.id) as vgames_count').group('genres.id').order(:title)
                   .page(params[:page])
  end

  def show
    @genre = Genre.find(params[:id])
    @games = @genre.vgames
                   .page(params[:page])
  end
end
