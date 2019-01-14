class RecipesController < ApplicationController
  before_action :require_login
  before_action :find_recipe, only: [:show, :add_recipe]
  def index
    @recipes = Recipe.all
  end
  def show
  end
  def add_recipe
    @user= User.find_by(id: session[:user_id])
    @user.recipes << @recipe
    redirect_to "/recipes/#{@recipe.id}"
  end
  private
  def find_recipe
    @recipe =  Recipe.find(params[:id])
  end
end
