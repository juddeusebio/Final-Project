# The controller for my various sneaker functions to show the index and various
# details of each sneaker. The methods for categorizing and searching amonst the
# sneakers are within this file as well.
class SneakersController < ApplicationController
  def index
    @categories = Category.all
    if params[:name]
      if params[:category_id] != ''
          @sneakers = Sneaker.where('nickname LIKE ? AND category_id = ?', "%#{params[:name]}%", params[:category_id])
      else
          @sneakers = Sneaker.where('nickname LIKE ?', "%#{params[:name]}%")
      end
    elsif params[:category_id]
        @sneakers = Category.find(params[:category_id]).sneakers
    else
        @sneakers = Sneaker.all
    end
    @sneakers = @sneakers.order('nickname').page(params[:page]).per(5)
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def sneaker_params
    params.require(:search).permit(:name )
  end

end
