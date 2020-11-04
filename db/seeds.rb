# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Blog.delete_all
Blog.create!(title: 'Chocolate Moist Cake',
             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Massa placerat duis ultricies lacus. Sed lectus vestibulum mattis ullamcorper
             velit sed. Dictum fusce ut placerat orci nulla pellentesque.
             Faucibus interdum posuere lorem ipsum.',
             image: 'cake.jpg')
# . . .
Blog.create!(title: 'Donut',
             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Massa placerat duis ultricies lacus. Sed lectus vestibulum mattis ullamcorper
             velit sed. Dictum fusce ut placerat orci nulla pellentesque.
             Faucibus interdum posuere lorem ipsum.',
             image: 'donut.jpg')
# . . .
Blog.create!(title: 'Meat Delicious Pizza',
             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Massa placerat duis ultricies lacus. Sed lectus vestibulum mattis ullamcorper
             velit sed. Dictum fusce ut placerat orci nulla pellentesque.
             Faucibus interdum posuere lorem ipsum.',
             image: 'pizza.jpg')
# . . .
Blog.create!(title: 'Coffee Refreshing Drink',
             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Massa placerat duis ultricies lacus. Sed lectus vestibulum mattis ullamcorper
             velit sed. Dictum fusce ut placerat orci nulla pellentesque.
             Faucibus interdum posuere lorem ipsum.',
             image: 'coffee.jpg')