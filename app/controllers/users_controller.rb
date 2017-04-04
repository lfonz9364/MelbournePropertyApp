class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You have registered for an account"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    @users = User.find(params[:id])
    @user.destroy

    flash[:success] = "user was successfully deleted"
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end
end
