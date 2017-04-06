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

  def destroy
    session[:id] = nil
    redirect_to '/login'
  end
end
