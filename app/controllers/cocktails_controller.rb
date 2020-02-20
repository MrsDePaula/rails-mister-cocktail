class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
  end

  private

  def cocktail_params
    params.require(:cocktails).permit(:name, :dose)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
