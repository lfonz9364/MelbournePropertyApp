class UsersController < ApplicationController

  def show
    @user = User.find_by(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]

    if user.save
      redirect_to '/login'
    else
      render 'new'
    end
  end

  def destroy
    users = User.find(params[:id])
    user.destroy

    # flash[:success] = "user was successfully deleted"
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end
end
