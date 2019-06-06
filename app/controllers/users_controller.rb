class UsersController < ApplicationController
  before_action :authorize_request, except: :create

  def index 

    @users = User.all.with_attached_image
    render json: @users
  end

  def show 
    render json :@user
  end

  def new
    @user = User.new
    render json: @user, status: :ok
  end

  def create
    
    @user = User.new(user_params)
    if @user.save
      # login(@user)
          render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
              status: :unprocessable_entity
    end
  end  
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation,:password_digest,:image)
  end
end
