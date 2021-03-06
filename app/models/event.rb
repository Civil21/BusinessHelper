class Event < ApplicationRecord
  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :event_employees
  has_many :employees, through: :event_employees
  has_many :event_cars
  has_many :cars, through: :event_cars
  enum event_status: {
    ' актуальне' => 0,
    'неактуальне' => 1
  }
  enum event_type: {
    'Новина' => 0,
    'Оголошення' => 1,
    'Прохання' => 2
  }
end
