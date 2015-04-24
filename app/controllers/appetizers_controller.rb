class AppetizersController < ApplicationController
  before_action :set_appetizer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @appetizers = Appetizer.all
    respond_with(@appetizers)
  end

  def show
    respond_with(@appetizer)
  end

  def new
    @appetizer = Appetizer.new
    respond_with(@appetizer)
  end

  def edit
  end

  def create
    @appetizer = Appetizer.new(appetizer_params)
    @appetizer.save
    respond_with(@appetizer)
  end

  def update
    @appetizer.update(appetizer_params)
    respond_with(@appetizer)
  end

  def destroy
    @appetizer.destroy
    respond_with(@appetizer)
  end

  private
    def set_appetizer
      @appetizer = Appetizer.find(params[:id])
    end

    def appetizer_params
      params.require(:appetizer).permit(:name, :price, :description)
    end
end
