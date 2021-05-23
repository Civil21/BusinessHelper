class Car < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :waybills
  has_many :event_cars
  has_many :events, through: :event_cars
  belongs_to :employee
  def name
    number + " (#{model})"
  end
end
