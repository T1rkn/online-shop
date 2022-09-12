class Api::V1::DevicesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    devices = Device.all
    render json: devices, status: 200
  end

  def create
    device = Device.new(
      name: device_params[:name],
      price: device_params[:price],
      rating: device_params[:rating],
      img: device_params[:img],
      typeId: device_params[:typeId],
      brandId: device_params[:brandId]
    )
    if device.save
      render json: device, status: 200
    else
      render json: {error: "Error creating review"}
    end
  end

  def show
    device = Device.find_by(id: params[:id])
    if device
      render json: device, status: 200
    else
      render json: {error: "Item not found"}
    end
  end

  private

  def device_params
    params.require(:device).permit(
      :name,
      :price,
      :rating,
      :img,
      :typeId,
      :brandId
    )
  end
end
