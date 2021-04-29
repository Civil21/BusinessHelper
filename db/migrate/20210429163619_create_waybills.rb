class CreateWaybills < ActiveRecord::Migration[6.1]
  def change
    create_table :waybills do |t|
      t.integer :employee_id
      t.integer :car_id
      t.integer :client_id
      t.integer :place_of_dispatch_id
      t.datetime :dispatch_at
      t.integer :place_of_arrival_id
      t.datetime :arrival_at
      t.integer :state

      t.timestamps
    end
  end
end
