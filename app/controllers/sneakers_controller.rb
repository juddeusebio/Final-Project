class SneakersController < ApplicationController
  def index
    if params[:category]
      @sneakers = Category.find_by(name: params[:category]).sneakers
    else
      @sneakers = Sneaker.all.page(params[:page])
    end
    @sneakers = Sneaker.order("nickname").page(params[:page]).per(5)
    @sneakers = Sneaker.search(params[:term])
  end
  def show
    @sneakers = Sneaker.find(params[:id])
  end

  def sneaker_params
    params.require(:search).permit(:term)
  end

end
