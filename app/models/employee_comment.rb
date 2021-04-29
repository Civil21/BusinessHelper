class EmployeeComment < ApplicationRecord
  belongs_to :employee
  belongs_to :object, polymorphic: true
end
