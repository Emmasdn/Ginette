class UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :edit]

  def show
  end


  def edit
  end

  def update
    @user = User.update(user_params)
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit( :email, :password)
  end
end
