class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: :show
  before_action :set_user, only: [:show, :update]

  def show
  end

  def update
    @user = User.update(user_params)
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def profile
   @user = current_user
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit( :email, :password)
  end


end
