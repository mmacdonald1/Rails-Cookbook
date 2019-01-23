class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :require_login, only: [:show, :edit]
  def home
  end
  def index
    if session[:user_id]
      redirect_to "/users/#{session[:user_id]}"
    end
  end

  def login
    @user= User.find_by(
      username: params[:username])
      .try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    end
  end

  def logout
    # destroy the session
    session[:user_id] = nil
    redirect_to '/login'
  end
  def show
  end
  def new
    @user =  User.new
  end
  def create
    if user_params[:admin]
      @user = User.create(user_params)
    else
      @user = User.create(username: user_params[:username], password: user_params[:password], admin: false)
    end
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
    params.require(:user).permit(:username, :password, :password_confirmation, :admin)
  end
end
