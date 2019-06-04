class OperationsController < ApplicationController
  before_action :get_operation , only: [:show,:edit,:new,:update,:destroy]

  def index
    @operation = Operation.all
    render json: @operations
  end
  def show
  end
  def new
  end
  def create
    @newOperation = Operation.new(operation_params)
    binding.irb
    if @newOperation.save
          render json: @newOperation, status: :created
    else
      render json: { errors: @newOperation.errors.full_messages },
              status: :unprocessable_entity
    end
  end
    
  private
  
  def operation_params
    params.require(:operation).permit(:name,:priority, :amount, :description, :date_of_expense,:category, :type_of_operation, :wallet_id)
  end
  def get_operation
    @operation = Operation.find(params[:id])
  end
end


