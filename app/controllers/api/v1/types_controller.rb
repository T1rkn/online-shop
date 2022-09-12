class Api::V1::TypesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    types = Type.all
    render json: types, status: 200
  end

  def create
    type = Type.new(
      name: type_params[:name],
    )
    if type.save
      render json: type, status: 200
    else
      render json: {error: "Error creating review"}
    end
  end

  def show
    type = Type.find_by(id: params[:id])
    if type
      render json: type, status: 200
    else
      render json: {error: "Item not found"}
    end
  end

  private

  def type_params
    params.require(:type).permit( :name )
  end
end
