class AddFavouriteIdToPropertiesTable < ActiveRecord::Migration[5.0]
  def change
    add_reference :properties, :favourite, foreign_key: true
  end
end
