class Api::PropertiesController < ApplicationController

  def show
     render 'sessions/show'
  end

  def create
    property = Property.new
    property.development_key = params[:development_key]
    property.save
  end

end
