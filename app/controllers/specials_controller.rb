class SpecialsController < ApplicationController
  before_action :set_special, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @specials = Special.all
    respond_with(@specials)
  end

  def show
    respond_with(@special)
  end

  def new
    @special = Special.new
    respond_with(@special)
  end

  def edit
  end

  def create
    @special = Special.new(special_params)
    @special.save
    respond_with(@special)
  end

  def update
    @special.update(special_params)
    respond_with(@special)
  end

  def destroy
    @special.destroy
    respond_with(@special)
  end

  private
    def set_special
      @special = Special.find(params[:id])
    end

    def special_params
      params.require(:special).permit(:name, :price, :description)
    end
end
