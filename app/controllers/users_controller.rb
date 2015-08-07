class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = UserRegistrar.perform(user_params)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
