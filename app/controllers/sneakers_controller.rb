class SneakersController < ApplicationController
  def index
  @sneakers = Sneaker.order("nickname").page(params[:page]).per(5)

    end

  def show
    @sneaker = Sneaker.find(params[:id])
    # @sneaker = params[:number]
  end

end
