# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: 'levi@gmail.com', password: '123456', password_confirmation: '123456', username:"levi", id:1)
user2 = User.create!(email: 'aria@gmail.com', password: '123456', password_confirmation: '123456', username:"aria", id:2)
user3 = User.create!(email: 'blake@gmail.com', password: '123456', password_confirmation: '123456', username:"blake", id:3)
user4 = User.create!(email: 'jack@gmail.com', password: '123456', password_confirmation: '123456', username:"jack", id:4)
user5 = User.create!(email: 'isabel@gmail.com', password: '123456', password_confirmation: '123456', username:"isabel", id:5)

user1.articles.create!(title: 'The Art Of Sushi',
                       text: 'Sushi is a multidisciplinary craft that produces a multisensory work of art. Visual eminence is not the only aspect of sushi which a student has to learn about before they can become a master of sushi. The taste of the sushi is just as important; the fish must be fresh, and no ingredient should be overpowering. Sushi is an act of balancing tastes so that everything works together to become a masterpiece.', image: 'aestheticsushi.jpeg')
user2.articles.create!(title: 'How To Drink Sake',
                       text: 'Sake is
                       most loosely described as a “rice wine” and while it is exactly that, it is also
                        much more than that. Sake has a unique taste which cannot be compared to any ot
                       her wine in the world, except perhaps some of the so-called Korean Village Wines
                        (the home-made type). It is completely compati­ble with the extremely delicate
                       palate of the Japanese people and blends perfectly with the flavor of their trad
                       itional dishes', image: 'sake.jpeg')
user3.articles.create!(title: 'Embracing Cosmopolitanism',
                       text: 'Now more than ever, the world needs to be more united. The effects of covid-19 have left millions dead, leaving families grieving, and economies bleeding. It is precisely in these times that one needs to become a citizen of the world. To become a cosmopoltan means to have the openness and empathy to respect, appreciate,
                       and support international policies, cultures, and growth.', image: 'cosmopolitan.jpeg')
user4.articles.create!(title: 'Rise Of The Nomad',
                       text: "While Covid-19 has left governments reeling, people dying, and millions affected negatively, it is also fair to say that not all the effects have been bad -- in fact, it's precisely because of this pandemic that the shift to remote work was accelerated. With people prioritizing their health and safety, the appeal to become a digital nomad is very real.", image: 'digitalnomad.jpeg')
                       
user5.articles.create!(title: 'Decoding The Creation Of Adam',
text: "The Creation of Adam is a fresco painting by Italian artist Michelangelo, which forms part of the Sistine Chapel's ceiling, painted c. 1508–1512. It illustrates the Biblical creation narrative from the Book of Genesis in which God gives life to Adam, the first man.", image: 'digitalnomad.jpeg')

Category.create(name: 'Food', priority: 1)
Category.create(name: 'Drink', priority: 2)
Category.create(name: 'Music', priority: 3)
Category.create(name: 'Art', priority: 4)
Category.create(name: 'History', priority: 5)
Category.create(name: 'Travel', priority: 6)
  Category.create(name: 'Business', priority: 7)
