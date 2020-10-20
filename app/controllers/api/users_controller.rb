class Api::UsersController < ApplicationController

  def create
    user = User.new(
      email: params[:email],
      password: params[:password]
    )
    if user.save
      render json: { message: "User create sucessfully"}, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  
end
