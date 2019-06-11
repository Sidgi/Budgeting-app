class AuthenticationController < ApplicationController
  # POST /auth/login
  
  def login
    @user = User.find_by_username(params[:username])
    if @user.authenticate(params[:password]) 
      token = JsonWebToken.encode(user_id: @user.id, username: @user.username)
      render json: { token: token,user_id:@user.id, email:@user.email }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:username, :password)
  end
end
