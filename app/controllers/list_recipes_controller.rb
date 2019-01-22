class ListRecipesController < ApplicationController
  before_action :require_login
  before_action :find_list_recipe, only: [:show]

  def index
    @list_recipes= ListRecipe.all
  end
  def show
  end
  def new
    @list_recipe =  ListRecipe.new
  end
  def create
    @list_recipe = ListRecipe.create(recipe_id: params[:recipe_id], list_id:  params[:list][:list_id])
    redirect_to @user
  end
  def destroy
    ListRecipe.find(params[:id]).destroy
    redirect_to users_path
  end
  private
  def find_list_recipe
    @list_recipe =  ListRecipe.find(params[:id])
  end
end
