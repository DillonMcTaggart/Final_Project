class CustomersController < ApplicationController
  def index
    @customers = Customer.includes(:customers).all("Name")
  end

  def show
    @customers = Movie.find(params[:id])
  end
end
