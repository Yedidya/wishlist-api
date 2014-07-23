class WishesController < ApplicationController
  respond_to :json, :xml, :html 

  def index
    @wishes = Wish.all
  end

  def show
    @wish = Wish.find_by(:id => params[:id])
  end

  def create
    @wish = Wish.new(wish_params)
    @wish.save
    render :show
  end

  def update
    @wish = Wish.find_by(:id => params[:id])
    @wish.update(wish_params)
    render :show
  end

  def destroy
    @wish = Wish.find_by(:id => params[:id])
    @wish.destroy
    render :index
  end

  private

  def wish_params
    return params.require(:wish).permit(:item, :vendor, :category, :price, :ship_address)
  end
end
