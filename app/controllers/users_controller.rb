class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  def index
    @users = User.all
  end
  def show
  end
  def new
    @user =  User.new
  end
  def create
    @user = User.create(user_params)
    return redirect_to @user unless @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end
  def edit
  end
  def update
    @user.update(user_params)
    redirect_to @user
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
  private
  def find_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
