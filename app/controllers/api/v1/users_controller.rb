class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.new(
      email: user_params[:email],
      password: user_params[:password],
      role: user_params[:role],
    )
    if user.save
      render json: user, status: 200
    else
      render json: {error: "Error creating review"}
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, status: 200
    else
      render json: {error: "Item not found"}
    end
  end

  private

  def user_params
    params.require(:user).permit( :email, :password, :role )
  end
end
