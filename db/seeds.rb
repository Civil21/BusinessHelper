# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

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
