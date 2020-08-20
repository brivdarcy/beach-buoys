class AddCoordinatesToBuoys < ActiveRecord::Migration[6.0]
  def change
    add_column :buoys, :latitude, :float
    add_column :buoys, :longitude, :float
  end
end
