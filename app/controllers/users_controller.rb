class UsersController < ApplicationController
  def index
    @users = User.all
    # binding.pry
    # render json: @users
  end

  def show
    @user = User.find(params[:id])
  end

  def create

  end
end
