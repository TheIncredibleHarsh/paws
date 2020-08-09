class AddColumnsToShelter < ActiveRecord::Migration[6.0]
  def change
    add_column :shelters, :name, :string
    add_column :shelters, :address, :string
    add_column :shelters, :website, :string
  end
end
