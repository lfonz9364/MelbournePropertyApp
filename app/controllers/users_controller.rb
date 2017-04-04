class UsersController < ApplicationController

<<<<<<< HEAD
  def show
    @user = User.find_by(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @users = User.find(params[:id])
    @user.destroy

    flash[:success] = "user was successfully deleted"
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end
=======
>>>>>>> c415b5816583a16330cf8ba6139fa14a929ba490
end
