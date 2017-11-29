class SneakersController < ApplicationController
  def index
    if params[:category]
      @sneakers = Category.find_by(name: params[:category]).sneakers
    else
      @sneakers = Sneaker.all
    end
    @sneakers = @sneakers.order("nickname").page(params[:page]).per(5)
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

end
