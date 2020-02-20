class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @doses = Dose.find(params[:id])
  end

  def new
    @doses = Dose.new
  end

  def create
    doses.create(cocktail_params)
    redirect_to doses_path
  end

  private

  def set_cocktail
    params.require(:doses).permit(:name, :ingredient, :dose)
  end
end
