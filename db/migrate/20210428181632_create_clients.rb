class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end