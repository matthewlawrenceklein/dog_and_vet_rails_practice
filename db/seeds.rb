# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Vet.destroy_all
Appointment.destroy_all

20. times do
    Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed)
end

20. times do
    Vet.create(name: Faker::Name.name )
end

50. times do
    Appointment.create(vet_id: Vet.all.sample.id, dog_id: Dog.all.sample.id)
end