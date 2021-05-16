class CreateCargos < ActiveRecord::Migration[6.1]
  def change
    create_table :cargos do |t|
      t.integer :state
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
