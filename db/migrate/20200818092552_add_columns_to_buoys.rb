class AddColumnsToBuoys < ActiveRecord::Migration[6.0]
  def change
    add_column :buoys, :address, :text
    add_column :buoys, :person_number, :integer
  end
end
