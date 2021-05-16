class Car < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :waybills
  def name
    number + " (#{model})"
  end
end
