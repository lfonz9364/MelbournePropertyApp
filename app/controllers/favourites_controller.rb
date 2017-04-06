class FavouritesController < ApplicationController

  def create
    favourite = Favourite.new
    favourite.save
    properties = params[:favourites]

    properties.each do |property|
      new_property = Property.new
      new_property.favourite_id = favourite.id
      new_property.development_key = property
      new_property.save
    end
  end

  def show
  end
  
end
