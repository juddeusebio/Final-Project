class SneakersController < ApplicationController
  def index
    if params[:category]
      @sneakers = Category.find_by(name: params[:category]).sneakers
    else
      @sneakers = Sneaker.all
    end
    @sneakers = @sneakers.order("nickname").page(params[:page]).per(5)
    @sneakers = Sneaker.search(params[:term])
  end
  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def sneaker_params
    params.require(:search).permit(:term)
  end

end
