class Api::PropertiesController < ApplicationController
  belongs_to :favourite
  
  def show
    render json: Property.all
  end

end
