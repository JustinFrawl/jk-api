# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'Mod 3')
Post.create(text: 'Very clearly the single best mod ever, no doubt!', category_id: 1)
Comment.create(text: "You're crazy to think that, didn't you see those kids who got mugs for themselves?  They're trying the hardest.", post_id: 1)
