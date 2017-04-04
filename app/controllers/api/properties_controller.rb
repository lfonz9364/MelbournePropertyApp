class Api::PropertiesController < ApplicationController
  def show
    render json: Property.all
  end

end
