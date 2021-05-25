class AddAgeToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :age, :integer
  end
end
