class ListRecipesController < ApplicationController
  before_action :require_login
  before_action :find_list_recipe, only: [:show, :edit, :update]
  def index
  def index
    @list_recipes= ListRecipe.all
  end
  def show
  end
  def new
    @list_recipe =  ListRecipe.new
  end
  def create
    byebug
    @list_recipe = ListRecipe.create(recipe_id: params[:recipe_id], user_id: session[:user_id])
    redirect_to @user
  end
  def edit
  end
  def update
    @list_recipe.update(name: params[:list_recipe][:name], user_id: session[:user_id])
    redirect_to @list_recipe
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
