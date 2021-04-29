class AddBaseFieldsToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :name, :string
    add_column :employees, :phone, :string
    add_column :employees, :position, :string
  end
end
