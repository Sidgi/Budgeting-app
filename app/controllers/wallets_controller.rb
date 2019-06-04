class WalletsController < ApplicationController
  before_action :get_wallet , only: [:show,:edit,:new,:update,:destroy]

  def index
    @wallets = Wallet.all
    render json: @wallets
  end
  def show
  end
  def new
  end
  def create
    Wallet.new(wallet_params)
  end
    
  private
  
  def wallet_params
    params.require(:wallet).permit(:name, :currency, :limit, :cash_or_credit,:total, :user_id)
  end
  def get_wallet
    @wallet = Wallet.find(params[:id])
  end
end
