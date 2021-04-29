class CreateEmployeeComments < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_comments do |t|
      t.integer :employee_id
      t.string :text
      t.integer :object_id
      t.string :object_type

      t.timestamps
    end
  end
end
