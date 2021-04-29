# frozen_string_literal: true

class EmployeeComponent < ViewComponent::Base
  def initialize(employee:)
    @employee = employee
  end

end
