class UsersController < ApplicationController
  before_action :authorize_request, except: [:create,:show] 

  def index 

    @users = User.all.with_attached_image
    render json: @users
  end

  def show 
    @user = User.find(params[:id])
    render json: @user , include: { wallets: {include: :operations}} , except: [:password_digest,:username,:created_at,:updated_at,:email,:id]
  end

  def new
    @user = User.new
    render :json => @user.as_json(:only =>[:username,:email]), status: :ok
  end

  def create
    
    @user = User.new(user_params)
    if @user.save
      render :json => @user.as_json(:only =>[:username,:email]), status: :created
    else
      render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
    end
  end  
  
  private
  
  def user_params
    params.require(:user).permit(:id,:username, :email, :password, :password_confirmation,:password_digest,:image)
  end
end
