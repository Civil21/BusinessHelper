class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  # has_many :comments, class: 'EmployeeComment'

  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :waybills

  has_many :event_employees, dependent: :destroy
  has_many :events, through: :event_employees

  has_many :cars, dependent: :destroy
end
