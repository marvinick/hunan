class ChickensController < ApplicationController
  before_action :set_chicken, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chickens = Chicken.all
    respond_with(@chickens)
  end

  def show
    respond_with(@chicken)
  end

  def new
    @chicken = Chicken.new
    respond_with(@chicken)
  end

  def edit
  end

  def create
    @chicken = Chicken.new(chicken_params)
    @chicken.save
    respond_with(@chicken)
  end

  def update
    @chicken.update(chicken_params)
    respond_with(@chicken)
  end

  def destroy
    @chicken.destroy
    respond_with(@chicken)
  end

  private
    def set_chicken
      @chicken = Chicken.find(params[:id])
    end

    def chicken_params
      params[:chicken]
    end
end
