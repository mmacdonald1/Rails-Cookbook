class ListsController < ApplicationController
  before_action :require_login
  before_action :find_list, only: [:show, :add_list]
  def index
    @lists = List.all
  end
  def show
  end
  def add_list
    @user= User.find_by(id: session[:user_id])
    @user.lists << @list
    redirect_to "/lists/#{@list.id}"
  end
  def delete_list
    @user= User.find_by(id: session[:user_id])
    List.find_by(list_id: @list.id).destroy
    redirect_to "/users/#{@user.id}"
  end
  private
  def find_list
    @list =  List.find(params[:id])
  end
end
