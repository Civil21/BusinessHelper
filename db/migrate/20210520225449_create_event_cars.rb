class CreateEventCars < ActiveRecord::Migration[6.1]
  def change
    create_table :event_cars do |t|
      t.integer :event_id
      t.integer :car_id

      t.timestamps
    end
  end
end
