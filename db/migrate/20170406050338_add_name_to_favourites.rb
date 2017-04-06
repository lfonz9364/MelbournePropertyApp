class AddNameToFavourites < ActiveRecord::Migration[5.0]
  def change
    add_column :favourites, :name, :string
  end
end
