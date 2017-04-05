class Api::PropertiesController < ApplicationController

  def show
     render 'sessions/show'
  end

<<<<<<< HEAD
  def 
=======
  def create
    property = Property.new
    property.development_key = params[:development_key]
    property.save
  end
>>>>>>> 096053055d0b1907c0e7b8d8b381d150ba329c4d

end
