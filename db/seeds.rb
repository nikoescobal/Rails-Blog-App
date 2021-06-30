# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: 'levi@gmail.com', password: '123456', password_confirmation: '123456', username:"levi",
id:1)
user2 = User.create!(email: 'aria@gmail.com', password: '123456', password_confirmation: '123456', username:"aria",
id:2)
user3 = User.create!(email: 'blake@gmail.com', password: '123456', password_confirmation: '123456', username:"blake",
id:3)
user4 = User.create!(email: 'jack@gmail.com', password: '123456', password_confirmation: '123456', username:"jack",
id:4)
user5 = User.create!(email: 'isabel@gmail.com', password: '123456', password_confirmation: '123456', username:"isabel",
id:5)

user1.articles.create!(title: 'The Art Of Sushi',
text: 'Sushi is a multidisciplinary craft that produces a multisensory work of art. Visual eminence is not the only aspect of sushi which a student has to learn about before they can become a master of sushi. The taste of the sushi is just as important; the fish must be fresh, and no ingredient should be overpowering. Sushi is an act of balancing tastes so that everything works together to become a masterpiece.

Sushi, although a simple dish in theory, is actually difficult to perfect–with sushi chefs spending years training to master it. In many ways, sushi is an art form and not everyone can get the technique down.

Sushi has been around since at least the fourth century, according to a Chinese dictionary that mentions salted fish being placed in cooked rice, causing it to undergo a fermentation process. It was likely introduced to Japan in the ninth century and increased in popularity as Buddhism spread. Because Buddhism encourages abstaining from meat, fish became a common alternative.

The more modern concept of sushi didn’t arrive until around the 1820s, when a man named Hanaya Yohei opened the first sushi stall in the city of Edo in Japan. He is credited as being the creator of modern nigiri sushi thanks to his development of a “fast food” sushi process. This process involved Yohei adding rice vinegar and salt to cooked rice and then topping it with a slice of raw fish, fresh from the bay.

Sushi was finally brought to America in 1966, when a man named Noritoshi Kanai and his Jewish business partner, Harry Wolff, opened Kawafuku Restaurant in Little Tokyo, Los Angeles. Their restaurant was the first to offer traditional nigiri sushi to Americans. It was incredibly successful with Japanese businessmen, who then introduced it to their American colleagues and friends.', image: 'sushiboat.jpeg')
user2.articles.create!(title: 'How To Drink Sake',
text: 'Sake is a Japanese drink that is made by fermenting rice. It is often referred to as a wine but is brewed quite differently. Also, the Alcohol by Volume (ABV) of sake is far higher than that of wine or beer. The sake rice is milled so that it mostly contains starch. To the rice mash, fungus is added and it helps to convert the starch into sugar. Thereafter, the sugar is allowed to ferment in the presence of yeast.

The taste, aroma and quality of sake are dependent on the fermentation process. The amount of rice that is milled is one of the crucial factors that determine the type of sake that is produced. The more the milled sake rice, the more delicate and clear the flavor of the drink.

The addition of brewer’s alcohol to the fermented alcohol is another important issue. It is important to understand that such an addition need not take away from the special taste of the drink, but in fact adds richness to it. Furthermore, the brewer’s alcohol also improves the shelf life of the alcohol.

Sake is quite enjoyable with food. Some people think that it should not be served with sushi because of the presence of rice in both, food and drink. However, there are no rules to suggest that you cannot enjoy your brew as you relish your sushi. The drink goes down particularly well with spicy dishes. The contrast in flavors is rather interesting and pleasurable. Experts recommend Junmai with seafood and sushi, while Junmai Daiginjo goes well with meats.

Sake is most loosely described as a “rice wine” and while it is exactly that, it is also much more than that. Sake has a unique taste which cannot be compared to any other wine in the world, except perhaps some of the so-called Korean Village Wines (the home-made type). It is completely compati­ble with the extremely delicate palate of the Japanese people and blends perfectly with the flavor of their traditional dishes', image: 'sake.jpeg')
user3.articles.create!(title: 'Cosmopolitan101',
text: 'The pandemic has caused the largest and fastest decline in international flows — including trade, foreign direct investment, and international travel — in modern history. While these numbers imply a major rollback of globalization’s recent gains, they don’t necessarily signal a fundamental collapse of international market integration. But how deep will the plunge really be? 

How fast can we expect global flows to rebound? And how might future flow patterns look different from the past? Leaders can find clues about the future and actionable implications for their companies by focusing on five key drivers of globalization’s trajectory: 1. global growth patterns; 2. supply-chain policies; 3. superpower frictions and fragility; 4. ongoing technical shifts; and 5. public opinion.

As leaders wrestle to guide their organizations through the Covid-19 pandemic, decisions running the gamut from where to sell to how to manage supply chains hinge on expectations about the future of globalization. The pandemic has prompted a new wave of globalization obituaries, but the latest data and forecasts imply that leaders should plan for — and shape — a world where both globalization and anti-globalization pressures remain enduring features of the business environment.

Now more than ever, the world needs to be more united. The effects of covid-19 have left millions dead, leaving families grieving, and economies bleeding. It is precisely in these times that one needs to become a citizen of the world To become a cosmopoltan means to have the openness and empathy to respect, appreciate, and support international policies, cultures, and growth.

In conclusion, Covid-19 looks like a “bend but won’t break crisis” for globalization. International flows are plummeting, but globalization — and opposition to globalization — will continue to present business opportunities and challenges. Careful attention to the drivers of globalization’s future can help companies navigate through and even profit from globalization’s turbulence. A volatile world of partially connected national economies expands possibilities for global strategy even as it complicates the management of multinational firms. Now is the time for global corporations to show their value by harnessing the best of the world’s capabilities to end the pandemic and bolster the recovery.', image: 'cosmopolitan.jpeg')
user4.articles.create!(title: 'Rise Of The Nomad',
text: "While Covid-19 has left governments reeling, people dying, and millions affected negatively, it is also fair to say that not all the effects have been bad -- in fact, it's precisely because of this pandemic that a massive shift to remote work started to happen. With people prioritizing their health and safety, the appeal to become a digital nomad is very real. In fact, the pandemic accelerated the trend towards digital nomadism, despite travel restrictions.

The Covid-19 pandemic has rewritten the rules governing work, with employees choosing to ditch the office permanently in favour of remote work. While many are leaving cities to settle in more affordable and spacious locations, a small but growing number are taking the opportunity to become ‘digital nomads’, remote workers who travel the world. For employers, this tech-savvy community is a potential source of affordable digital skills – and governments are beginning to make it easier for digital nomads to work in their countries.

As the name suggests, digital nomads are a tech-savvy group. Of the digital nomads surveyed by MBO Partners, 12% work in IT, more than any other profession. Seventy-one percent say using technology makes them more competitive in their work, compared to 43% of non-nomads, and they are more likely to describe themselves as technology early adopters.

Digital nomads could therefore be an affordable source of in-demand technology skills, especially as companies become more comfortable with employees working remotely.

Digital nomadism is likely to be one dimension of a broader global redistribution of work following the pandemic and the resulting growth in remote work. “Jobs that can be done remotely can also be done offshore,” economist Carl Benedikt Frey told Tech Monitor last year. “In many cases, remote work is only a transitional phase before the next wave of offshoring as companies take advantage of new technologies, like telepresence, and cheaper labour in places like India.”

But for the time being, there are still reasons why employers might favour digital nomads over conventional offshoring, Frey adds. “A more significant barrier to offshoring than digital infrastructure is language,” he says. “Machine translation is improving rapidly but language and culture matter enormously for trade in services.”", image: 'digitalnomad.jpeg')

# user5.articles.create!(title: 'Decoding The Creation Of Adam',
# text: "The Creation of Adam is a fresco painting by Italian artist Michelangelo, which forms part of the Sistine
# Chapel's ceiling, painted c. 1508–1512. It illustrates the Biblical creation narrative from the Book of Genesis in which
# God gives life to Adam, the first man.", image: 'art.jpeg')

Category.create(name: 'Food', priority: 1)
Category.create(name: 'Drink', priority: 2)
Category.create(name: 'Music', priority: 3)
Category.create(name: 'Art', priority: 4)
Category.create(name: 'History', priority: 5)
Category.create(name: 'Travel', priority: 6)
Category.create(name: 'Business', priority: 7)

ArticleCategory.create(article_id:1, category_id:1)
ArticleCategory.create(article_id:2, category_id:2)
ArticleCategory.create(article_id:3, category_id:6)
ArticleCategory.create(article_id:4, category_id:7)

Vote.create(user_id:1, article_id:1)