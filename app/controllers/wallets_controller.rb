class WalletsController < ApplicationController
  before_action :get_wallet , only: [:show,:edit,:new,:update,:destroy]

  def index
    @wallets = Wallet.all 
    render json: @wallets
  end
  def show
    render json: @wallet , :include => :operations
  end
  def new
  end
  def create
    @newWallet =  Wallet.new(wallet_params)
    if @newWallet.save
          render json: @newWallet, status: :created
    else
      render json: { errors: @newWallet.errors.full_messages },
              status: :unprocessable_entity
    end
  end
    
  private
  
  def wallet_params
    params.permit(:name, :currency, :limit, :cash_or_credit,:total, :user_id)
  end
  def get_wallet
    @wallet = Wallet.find(params[:id])
  end
end
