class HomeController < ApplicationController
  def index
    @videogames = Videogame.includes(:videogame)
                           .order('Global_Sales DESC')
                           .limit(20)

    @customers = Customer.select('Name')
                         .left_joins(:videogames)
  end
end
