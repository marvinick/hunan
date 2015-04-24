class SoupsController < ApplicationController
  before_action :set_soup, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @soups = Soup.all
    respond_with(@soups)
  end

  def show
    respond_with(@soup)
  end

  def new
    @soup = Soup.new
    respond_with(@soup)
  end

  def edit
  end

  def create
    @soup = Soup.new(soup_params)
    @soup.save
    respond_with(@soup)
  end

  def update
    @soup.update(soup_params)
    respond_with(@soup)
  end

  def destroy
    @soup.destroy
    respond_with(@soup)
  end

  private
    def set_soup
      @soup = Soup.find(params[:id])
    end

    def soup_params
      params.require(:soup).permit(:name, :size, :price)
    end
end
