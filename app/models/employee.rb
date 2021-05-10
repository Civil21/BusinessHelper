class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  # has_many :comments, class: 'EmployeeComment'

  has_many :employee_comments, as: :object, dependent: :destroy
  has_many :waybills
end