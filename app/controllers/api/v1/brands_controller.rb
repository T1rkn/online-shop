class Api::V1::BrandsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    brands = Brand.all
    render json: brands, status: 200
  end

  def create
    brand = Brand.new(
      name: brand_params[:name],
    )
    if brand.save
      render json: brand, status: 200
    else
      render json: {error: "Error creating review"}
    end
  end

  def show
    brand = Brand.find_by(id: params[:id])
    if brand
      render json: brand, status: 200
    else
      render json: {error: "Item not found"}
    end
  end

  private

  def brand_params
    params.require(:brand).permit( :name )
  end
end
