class AddColumnsToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :name, :string
    add_column :animals, :species, :string
    add_column :animals, :age, :string
    add_column :animals, :handler, :string
  end
end
