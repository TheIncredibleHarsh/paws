class AddUserAndShelterToAnimal < ActiveRecord::Migration[6.0]
  def change
    add_reference :animals, :employee, null: false, foreign_key: true
    add_reference :animals, :shelter, null: false, foreign_key: true
  end
end
