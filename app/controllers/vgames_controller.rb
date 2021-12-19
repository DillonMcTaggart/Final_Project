class VgamesController < ApplicationController
  def index
    @genre = Genre.find(params[:genre_id])
    @vgames = @genre.vgames.includes(:vgame_variants).order(:title)
  end
end
