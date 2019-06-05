class OperationsController < ApplicationController
  before_action :get_operation , only: [:show,:edit,:new,:update,:destroy]

  def index
    @operations = Operation.all
    render json: @operations, :include => {:wallet => {:only => :name}}, :except => [:created_at, :updated_at]
  end
  def show
  end
  def new
  end
  def create
    @newOperation = Operation.new(operation_params)

    if @newOperation.save
          render json: @newOperation, status: :created
    else
      render json: { errors: @newOperation.errors.full_messages },
              status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    @operation.update(operation_params)
  end
  def destroy
    if @operation.destroy
      render json: @operation, status: :created
    else
      render json: { errors: @operation.errors.full_messages },
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


