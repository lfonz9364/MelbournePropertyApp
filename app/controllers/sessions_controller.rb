class SessionsController < ApplicationController
  def new
  end

  def create
    user  = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to "/api/properties/show/#{user.id}"
    else
      render :login
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to '/show'
    else
      render 'edit'
    end
  end

  def destroy
    session[:id] = nil
    redirect_to '/login'
  end
end
