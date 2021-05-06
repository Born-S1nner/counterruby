class CreateTablePets < ActiveRecord::Migration[6.1]
  def change
    create_table :table_pets do |t|
      t.string :specie
      t.string :owner
      t.string :pet_name
      t.string :owned_date

      t.timestamps
    end
  end
end
