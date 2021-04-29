class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :event_type
      t.integer :event_status

      t.timestamps
    end
  end
end
