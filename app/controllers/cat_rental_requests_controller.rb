class CatRentalRequestsController < ApplicationController

  def index
    render :index
  end

  def new
    @cats = Cat.all
    @cat_rental = CatRentalRequest.new
    render :new
  end

end
