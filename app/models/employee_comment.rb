class EmployeeComment < ApplicationRecord
  belongs_to :employee
  belongs_to :object, polymorfic: true
end
