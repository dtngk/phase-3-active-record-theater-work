puts "Creating Roles..."
r1 = Role.create(character_name: "Super Man")
r2 = Role.create(character_name: "Batman")
r3 = Role.create(character_name: "SpiderMan")
r4 = Role.create(character_name: "Flash")

puts "Creating Auditions..."
Audition.create(actor: "Homer Simpson", location: "Springfield", phone: 1111111, hired: false, role_id: nil)
Audition.create(actor: "Clark Kent", location: "Metropolis", phone: 12345678, hired: true, role_id: r1.id)
Audition.create(actor: "Bruce Wayne", location: "Gotham City", phone: 99999999, hired: true, role_id: r2.id)
Audition.create(actor: "Peter Parker", location: "New York", phone: 88888888, hired: true, role_id: r3.id)
Audition.create(actor: "Miles Morales", location: "New York", phone: 7777777, hired: true, role_id: r3.id)

puts "Done Seeding!"