class VeggiesController < ApplicationController
  before_action :set_veggy, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @veggies = Veggie.all
    respond_with(@veggies)
  end

  def show
    respond_with(@veggy)
  end

  def new
    @veggy = Veggie.new
    respond_with(@veggy)
  end

  def edit
  end

  def create
    @veggy = Veggie.new(veggie_params)
    @veggy.save
    respond_with(@veggy)
  end

  def update
    @veggy.update(veggie_params)
    respond_with(@veggy)
  end

  def destroy
    @veggy.destroy
    respond_with(@veggy)
  end

  private
    def set_veggy
      @veggy = Veggie.find(params[:id])
    end

    def veggy_params
      params.require(:veggy).permit(:name, :price, :description)
    end
end
