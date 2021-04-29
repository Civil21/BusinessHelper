class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :country
      t.string :state
      t.string :city
      t.string :street
      t.string :building_number
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end
