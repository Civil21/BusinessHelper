class CreateCargoWaybills < ActiveRecord::Migration[6.1]
  def change
    create_table :cargo_waybills do |t|
      t.integer :cargo_id
      t.integer :waybill_id

      t.timestamps
    end
  end
end
