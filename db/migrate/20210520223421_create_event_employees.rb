class CreateEventEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :event_employees do |t|
      t.integer :event_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
