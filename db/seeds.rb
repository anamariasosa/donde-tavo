# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
Category.destroy_all
Supplier.destroy_all
User.destroy_all
User.create(email:'admin@gmail.com', password: '12345678', admin: true)
Category.create(name: 'Helados')
Category.create(name: 'Bebidas')
Category.create(name: 'Almuerzos')
Category.create(name: 'Desayunos')
Category.create(name: 'Frutas')
Category.create(name: 'Mecato')
Supplier.create(name: "Postobon", address: "Cra 80 b", phone_number: '23243243')
Supplier.create(name: "Margarita", address: "Cra 20 b", phone_number: '34234')
Supplier.create(name: "Colombina", address: "Cra 10 b", phone_number: '234334234')
for i in 0..5
Product.create(name: "Papitas #{i}",
              price: rand(1000..1000000),
              image: File.open(File.join(Rails.root, 'public/limon.jpg')),
              category_id: rand(2..7),
              supplier_id: rand(2..4),
              quantity: i)
puts "Create produt #{i}"
end
