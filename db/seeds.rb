# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

ToDo.destroy_all

User.create(username: 'evereichmann', password: '1234password', first_name: 'Eve', last_name: 'Reichmann')
User.create(username: 'aceujimori', password: '1234password', first_name: 'Ace', last_name: 'Ujimori')

ToDo.create(title: 'Chores', content: 'Laundry, Sweep, and Mop', urgent: false, user_id: 1)
ToDo.create(title: 'Chores', content: 'Water plants, Dishes, and Take the garbage out', urgent: false, user_id: 2)
ToDo.create(title: 'Programming', content: 'Work on Mod 4 Project', urgent: true, user_id: 1)
ToDo.create(title: 'Work', content: 'Tracking board layout, and Mapping function', urgent: true, user_id: 2)
ToDo.create(title: 'Business', content: 'Add images to website', urgent: false, user_id: 2)
