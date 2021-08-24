# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# user sans les photos avatars
anna = User.create(name: 'Anaïs', nickname: 'Anna', email: 'anna@lewagon.com', password: '123456', self_description: "J'aime la nature et je suis souriante")
arnaud = User.create(name: 'Arnaud', nickname: 'Arno', email: 'arnaud@lewagon.com', password: '123456', self_description: "J'aime la nature et le sport")
chris = User.create(name: 'Christophe', nickname: 'Chris', email: 'chris@lewagon.com', password: '123456', self_description: "J'aime la nature et la science des rêves")
genevieve = User.create(name: 'Genevieve', nickname: 'Geai', email: 'genevieve@lewagon.com', password:'123456', self_description: "J'aime la nature et les livres")
kevin = User.create(name: 'Kevin', nickname: 'kev', email: 'kevin@lewagon.com', password: '123456', self_description: "J'aime la nature et les voyages")

Activity.destroy_all
# Activity
a1 = Activity.create(longitude: 5.371960639953613, latitude: 43.26214599609375, user: anna)

a2 = Activity.create(longitude: 5.4047562, latitude: 43.313862, user: arnaud)

a3 = Activity.create(longitude: 5.38107, latitude: 43.29695, user: chris)

a4 = Activity.create(longitude: 5.383674621582031, latitude: 43.29341125488281, user: genevieve)

a5 = Activity.create(longitude: 5.355508327484131, latitude: 43.290714263916016, user: kevin)
