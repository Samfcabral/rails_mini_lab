class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]
  def index
    @users = User.all
  end

  def show
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def create
  	@user = User.create(user_params)
    login(@user)
  	redirect_to user_path(@user.id)
  end

private
  
  def user_params
	  params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
