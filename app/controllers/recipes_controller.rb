class RecipesController < ApplicationController
  before_action :require_login
  before_action :find_recipe, only: [:show, :edit, :update, :add_recipe]
  def index
    @recipes = Recipe.all
  end
  def show
  end
  def new
    @recipe =  Recipe.new
  end
  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end
  def edit
  end
  def update
    @recipe.update(recipe_params)
    redirect_to @recipe
  end
  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to users_path
  end

  # def add_recipe
  #   @list= List.find_by(id: params[:list_id])
  #   @list.recipes << @recipe
  #   redirect_to "/recipes/#{@recipe.id}"
  # end
  # def delete_recipe
  #   @list= List.find_by(id: params[:list_id])
  #   ListRecipe.find_by(list_id: @list.id, recipe_id: params[:id]).destroy
  #   redirect_to "/lists/#{@list.id}"
  # end
  private
  def find_recipe
    @recipe =  Recipe.find(params[:id])
  end
  def recipe_params
    params.require(:recipe).permit(:name, :recipe, :ingredients, :time)
  end
end
