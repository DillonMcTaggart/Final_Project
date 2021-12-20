class VgamesController < ApplicationController
  def index
    @vgames = Vgame.all
                   .page(params[:page])
    # @genre = Genre.find(params[:genre_id])
    # @vgames = @genre.vgames.includes(:vgame_variants).order(:title)
  end

  def show
    @game = Vgame.find(params[:id])
  end
end
