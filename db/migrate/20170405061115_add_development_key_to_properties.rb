class AddDevelopmentKeyToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :development_key, :string
  end
end
