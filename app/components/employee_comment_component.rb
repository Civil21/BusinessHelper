# frozen_string_literal: true

class EmployeeCommentComponent < ViewComponent::Base
  def initialize(employee_comment:)
    @employee_comment = employee_comment
  end

end
