# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

english = OptionalModule.create([{name: 'English', description: 'An optional module to learn English.'}])
french = OptionalModule.create([{name: 'French', description: 'An optional module to learn French.'}])
spanish = OptionalModule.create([{name: 'Spanish', description: 'An optional module to learn Spanish.'}])
japanese = OptionalModule.create([{name: 'Japanese', description: 'An optional module to learn Japanese.'}])
mandarin = OptionalModule.create([{name: 'Mandarin', description: 'An optional module to learn Mandarin.'}])
finance = OptionalModule.create([{name: 'Finance', description: 'An optional module to learn about finance.'}])
sports = OptionalModule.create([{name: 'Sports', description: 'An optional module to learn about sports and biology.'}])
music = OptionalModule.create([{name: 'Music', description: 'An optional module to learn music.'}])
