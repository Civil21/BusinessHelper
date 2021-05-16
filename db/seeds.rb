# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

require 'faker'

Employee.create(email: 'employee@example.com',
                phone: '+380663477974',
                password: 'password',
                password_confirmation: 'password',
                name: 'Пупкін Василь Васильович',
                position: 'Менеджер з продаж')
Employee.create(email: 'employee1@example.com',
                phone: '+380663477974',
                password: 'password',
                password_confirmation: 'password',
                name: 'Пупкін Степан Васильович',
                position: 'Водій експедитор')
Employee.create(email: 'employee2@example.com',
                phone: '+380663477974',
                password: 'password',
                password_confirmation: 'password',
                name: 'Галкін Василь Васильович',
                position: 'Грузчик')
Employee.create(email: 'employee3@example.com',
                phone: '+380663477974',
                password: 'password',
                password_confirmation: 'password',
                name: 'Вітькін Олексій Васильович',
                position: 'Спеціаліст з Техніки безпеки')

10.times do
  maker = Faker::Vehicle.make
  Car.create(
    number: Faker::Vehicle.singapore_license_plate,
    model: maker + ' ' + Faker::Vehicle.model(make_of_model: maker),
    employee_id: 1 + rand(Employee.count - 1),
    year: Faker::Vehicle.year
  )
end

10.times do
  Client.create(
    name: Faker::Name.name,
    phone: Faker::PhoneNumber.cell_phone_with_country_code,
    email: Faker::Internet.email
  )
end
6.times do
  loop do
    @place = Place.create(
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude,
      phone: Faker::PhoneNumber.cell_phone_with_country_code
    )
    break if @place.address.length > 3

    @place.delete
  end
end
20.times do
  Cargo.create(
    price: Faker::Commerce.price,
    state: 0,
    name: Faker::Commerce.product_name,
    description: "Color: #{Faker::Commerce.color}, material: #{Faker::Commerce.material}, code: #{Faker::Commerce.promotion_code}"
  )
end
