# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Brand.create(name: "Tesla", available: true)
Brand.create(name: "Nissan", available: true)
Brand.create(name: "Chevrolet", available: true)
Brand.create(name: "BMW", available: true)
Brand.create(name: "Audi", available: true)
Brand.create(name: "Hyundai", available: true)
Brand.create(name: "Kia", available: true)
Brand.create(name: "Ford", available: true)
Brand.create(name: "Porsche", available: true)
Brand.create(name: "Volkswagen", available: true)

Feature.create(name: "Batería de iones de litio", available: true)
Feature.create(name: "Batería de estado sólido", available: true)
Feature.create(name: "Sistema de Carga alámbrica", available: true)
Feature.create(name: "Sistema de Carga Inalámbrica", available: true)
Feature.create(name: "Tecnología de Asistencia a la Conducción", available: true)

User.create(email: "admin@admin.cl", password: "123456", password_confirmation: "123456", role: 1)
User.create(email: "cliente@cliente.cl", password: "123456", password_confirmation: "123456", role: 0)

20.times do |x|
    Modelcar.create(name: "ELECTRO-#{x}", available: true)
end