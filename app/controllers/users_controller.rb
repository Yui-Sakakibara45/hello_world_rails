class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    # binding.pry
    # render json: @users
  end

  def show
  end

  def create
    # @user = User.new(
    #   name: params[:name],
    #   account: params[:account],
    #   email: params[:email],
    # )

    @user = User.new(user_params)
    # インスタンスを DB に保存する
    @user.save!

    # json として値を返す
    render :show
  end


  def update
    #探してきたレコードに対して変更を行う
    @user.update!(user_params)
    #Jsonとして値を返す
    render :show

  end

  def destroy
    # 探してきたレコードを削除する
    @user.destroy!
    # Jsonとして値を返す
    render :show
  end


   private

    def user_params
      params.require(:user).permit(:name, :account, :email)
     end


     def set_user
       # 対象のレコードを探す
      @user = User.find(params[:id])
     end



end
