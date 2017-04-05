class FavouritesController < ApplicationController

  def create
    favourite = Favourite.new
    favourite.property_id = params[:property_id]
    favourite.development_key = params[:development_key]
    favourite.user_id = session[:user_id]

    favourite.save
    redirect '/show'
  end

  def api_create
    favourite = Favourite.new
    favourite.property_id = params[:property_id]
    favourite.development_key = params[:development_key]
    favourite.user_id = session[:user_id]

    favourite.save

    render json: {favourites_count: favourite.property.favourite.count}
end
