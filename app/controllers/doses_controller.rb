class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(strong_params)
    @dose.cocktail_id = @cocktail.id
    # @dose.ingredient = Ingredient.find(params["dose"]["ingredient"])
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
  end

  private

  def strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
