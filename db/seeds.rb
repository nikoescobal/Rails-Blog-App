# rubocop:disable all
# frozen_string_literal: true

puts 'creating users'

user1 = User.create!(email: 'levi@gmail.com', password: '123456', password_confirmation: '123456', username: 'levi')
user2 = User.create!(email: 'aria@gmail.com', password: '123456', password_confirmation: '123456', username: 'aria')
user3 = User.create!(email: 'blake@gmail.com', password: '123456', password_confirmation: '123456', username: 'blake')
user4 = User.create!(email: 'jack@gmail.com', password: '123456', password_confirmation: '123456', username: 'jack')
user5 = User.create!(email: 'isabel@gmail.com', password: '123456', password_confirmation: '123456', username: 'isabel')

puts 'creating categories'

Category.create(name: 'Drink', priority: 1)
Category.create(name: 'Music', priority: 2)
Category.create(name: 'Art', priority: 3)
Category.create(name: 'History', priority: 4)
Category.create(name: 'Travel', priority: 5)
Category.create(name: 'Business', priority: 6)
Category.create(name: 'Food', priority: 7)

puts 'creating article categories'

ArticleCategory.create(article_id: 1, category_id: 7)
ArticleCategory.create(article_id: 2, category_id: 1)
ArticleCategory.create(article_id: 3, category_id: 5)
ArticleCategory.create(article_id: 4, category_id: 6)
ArticleCategory.create(article_id: 5, category_id: 2)
ArticleCategory.create(article_id: 6, category_id: 3)
ArticleCategory.create(article_id: 7, category_id: 4)
ArticleCategory.create(article_id: 8, category_id: 2)
ArticleCategory.create(article_id: 9, category_id: 2)
ArticleCategory.create(article_id: 10, category_id: 2)
ArticleCategory.create(article_id: 11, category_id: 6)
ArticleCategory.create(article_id: 12, category_id: 7)

puts 'creating votes'

Vote.create(user_id: 1, article_id: 1)
Vote.create(user_id: 2, article_id: 1)

puts 'creating article 1'

a = user1.articles.create!(title: 'The Art Of Sushi', text: 'Sushi is a multidisciplinary craft that produces a multisensory work of art. Visual eminence is not the only aspect of sushi which a student has to learn about before they can become a master of sushi. The taste of the sushi is just as important; the fish must be fresh, and no ingredient should be overpowering. Sushi is an act of balancing tastes so that everything works together to become a masterpiece.

Sushi, although a simple dish in theory, is actually difficult to perfect–with sushi chefs spending years training to master it. In many ways, sushi is an art form and not everyone can get the technique down.

Sushi has been around since at least the fourth century, according to a Chinese dictionary that mentions salted fish being placed in cooked rice, causing it to undergo a fermentation process. It was likely introduced to Japan in the ninth century and increased in popularity as Buddhism spread. Because Buddhism encourages abstaining from meat, fish became a common alternative.

The more modern concept of sushi didn’t arrive until around the 1820s, when a man named Hanaya Yohei opened the first sushi stall in the city of Edo in Japan. He is credited as being the creator of modern nigiri sushi thanks to his development of a “fast food” sushi process. This process involved Yohei adding rice vinegar and salt to cooked rice and then topping it with a slice of raw fish, fresh from the bay.

Sushi was finally brought to America in 1966, when a man named Noritoshi Kanai and his Jewish business partner, Harry Wolff, opened Kawafuku Restaurant in Little Tokyo, Los Angeles. Their restaurant was the first to offer traditional nigiri sushi to Americans. It was incredibly successful with Japanese businessmen, who then introduced it to their American colleagues and friends.', category_ids: [7])

a.main_image.attach(io: File.open('./app/assets/seed_images/sushiboat.jpeg'), filename: 'sushiboat.jpeg')

puts 'creating article 2'

b = user2.articles.create!(title: 'How To Drink Sake', text: 'Sake is a Japanese drink that is made by fermenting rice. It is often referred to as a wine but is brewed quite differently. Also, the Alcohol by Volume (ABV) of sake is far higher than that of wine or beer. The sake rice is milled so that it mostly contains starch. To the rice mash, fungus is added and it helps to convert the starch into sugar. Thereafter, the sugar is allowed to ferment in the presence of yeast.

The taste, aroma and quality of sake are dependent on the fermentation process. The amount of rice that is milled is one of the crucial factors that determine the type of sake that is produced. The more the milled sake rice, the more delicate and clear the flavor of the drink.

The addition of brewer’s alcohol to the fermented alcohol is another important issue. It is important to understand that such an addition need not take away from the special taste of the drink, but in fact adds richness to it. Furthermore, the brewer’s alcohol also improves the shelf life of the alcohol.

Sake is quite enjoyable with food. Some people think that it should not be served with sushi because of the presence of rice in both, food and drink. However, there are no rules to suggest that you cannot enjoy your brew as you relish your sushi. The drink goes down particularly well with spicy dishes. The contrast in flavors is rather interesting and pleasurable. Experts recommend Junmai with seafood and sushi, while Junmai Daiginjo goes well with meats.

Sake is most loosely described as a “rice wine” and while it is exactly that, it is also much more than that. Sake has a unique taste which cannot be compared to any other wine in the world, except perhaps some of the so-called Korean Village Wines (the home-made type). It is completely compati­ble with the extremely delicate palate of the Japanese people and blends perfectly with the flavor of their traditional dishes', category_ids: [1])

b.main_image.attach(io: File.open('./app/assets/seed_images/sake.jpeg'), filename: 'sake.jpeg')

puts 'creating article 3'

c = user3.articles.create!(title: 'Cosmopolitan101', text: 'The pandemic has caused the largest and fastest decline in international flows — including trade, foreign direct investment, and international travel — in modern history. While these numbers imply a major rollback of globalization’s recent gains, they don’t necessarily signal a fundamental collapse of international market integration. But how deep will the plunge really be?

How fast can we expect global flows to rebound? And how might future flow patterns look different from the past? Leaders can find clues about the future and actionable implications for their companies by focusing on five key drivers of globalization’s trajectory: 1. global growth patterns; 2. supply-chain policies; 3. superpower frictions and fragility; 4. ongoing technical shifts; and 5. public opinion.

As leaders wrestle to guide their organizations through the Covid-19 pandemic, decisions running the gamut from where to sell to how to manage supply chains hinge on expectations about the future of globalization. The pandemic has prompted a new wave of globalization obituaries, but the latest data and forecasts imply that leaders should plan for — and shape — a world where both globalization and anti-globalization pressures remain enduring features of the business environment.

Now more than ever, the world needs to be more united. The effects of covid-19 have left millions dead, leaving families grieving, and economies bleeding. It is precisely in these times that one needs to become a citizen of the world To become a cosmopoltan means to have the openness and empathy to respect, appreciate, and support international policies, cultures, and growth.

In conclusion, Covid-19 looks like a “bend but won’t break crisis” for globalization. International flows are plummeting, but globalization — and opposition to globalization — will continue to present business opportunities and challenges. Careful attention to the drivers of globalization’s future can help companies navigate through and even profit from globalization’s turbulence. A volatile world of partially connected national economies expands possibilities for global strategy even as it complicates the management of multinational firms. Now is the time for global corporations to show their value by harnessing the best of the world’s capabilities to end the pandemic and bolster the recovery.', category_ids: [5])

c.main_image.attach(io: File.open('./app/assets/seed_images/cosmopolitan.jpeg'), filename: 'cosmopolitan.jpeg')

puts 'creating article 4'

d = user4.articles.create!(title: 'Rise Of The Nomad', text: "While Covid-19 has left governments reeling, people dying, and millions affected negatively, it is also fair to say that not all the effects have been bad -- in fact, it's precisely because of this pandemic that a massive shift to remote work started to happen. With people prioritizing their health and safety, the appeal to become a digital nomad is very real. In fact, the pandemic accelerated the trend towards digital nomadism, despite travel restrictions.

The Covid-19 pandemic has rewritten the rules governing work, with employees choosing to ditch the office permanently in favour of remote work. While many are leaving cities to settle in more affordable and spacious locations, a small but growing number are taking the opportunity to become ‘digital nomads’, remote workers who travel the world. For employers, this tech-savvy community is a potential source of affordable digital skills – and governments are beginning to make it easier for digital nomads to work in their countries.

As the name suggests, digital nomads are a tech-savvy group. Of the digital nomads surveyed by MBO Partners, 12% work in IT, more than any other profession. Seventy-one percent say using technology makes them more competitive in their work, compared to 43% of non-nomads, and they are more likely to describe themselves as technology early adopters.

Digital nomads could therefore be an affordable source of in-demand technology skills, especially as companies become more comfortable with employees working remotely.

Digital nomadism is likely to be one dimension of a broader global redistribution of work following the pandemic and the resulting growth in remote work. “Jobs that can be done remotely can also be done offshore,” economist Carl Benedikt Frey told Tech Monitor last year. “In many cases, remote work is only a transitional phase before the next wave of offshoring as companies take advantage of new technologies, like telepresence, and cheaper labour in places like India.”

But for the time being, there are still reasons why employers might favour digital nomads over conventional offshoring, Frey adds. “A more significant barrier to offshoring than digital infrastructure is language,” he says. “Machine translation is improving rapidly but language and culture matter enormously for trade in services.”", category_ids: [6])

d.main_image.attach(io: File.open('./app/assets/seed_images/nomad.jpeg'), filename: 'nomad.jpeg')

puts 'creating article 5'

e = user4.articles.create!(title: 'What is Math Rock?', text: "Math rock is just as eccentric as it sounds - It’s a bit like a mathematician dabbling with musical chords, strings, and notations and coming up with something genius. The results are phenomenally varied and unique. In India, where artists and bands are constantly experimenting and innovating, math rock is an exciting world worth entering.

By the 90s, Math Rock was a known genre and many new bands were popping up. In Europe, bands such as Kebong (Poland), The Redneck Manifesto (Ireland), and Uzeda (Italy) were some. In the United States, bands were mostly from San Diego (Upsilon Acrux, Drive like Jehu, No Knife) and Northern California (The well-known Game Theory and The Loud Family). As far as contemporary math rock is concerned, bands such as Slint, Chavez, and Shellac, which were formed in the 1990s, continue to tour and release albums today. The newest crop of bands, such as Battles and Tall Ships, continue to enjoy renewed listener interest.

Internationally, however, math rock is better recognised. It originated in the 1980s out of progressive rock, which itself is defined by long-winding instrumentation and a perpetual sense of ‘progression’. Music critics consider a Canadian punk rock group Nomeansno as a pioneer of the genre. They would make music in the most irregular and complex structures imaginable, resulting in savoury outcomes. Massacre and Black Flag were two other bands that contributed significantly to the development of the genre in the 80s.

As you might have guessed by now, this is not your conventional music where rhythm is god and everything is based on a structure. This is math rock. It is defined by its abnormal time signatures and complex rhythm.

Imagine this: one, two, three, four; one, two, three, four – this is a regular 4/4 time signature every mainstream artist from Lil Wayne to Aerosmith would use for their songs. But in math rock, the beats would go – one, two, three, four, five, six, seven; one, two, three, four, five, six, seven, eight – the time signature is irregular.", category_ids: [2])

e.main_image.attach(io: File.open('./app/assets/seed_images/chon.jpeg'), filename: 'chon.jpeg')

puts 'creating article 6'

f = user5.articles.create!(title: 'Decoding The Creation Of Adam', text: "The most famous section of the Sistine Chapel ceiling is Michelangelo’s Creation of Adam.  This scene is located next to the Creation of Eve, which is the panel at the center of the room, and the Congregation of the Waters, which is closer to the altar.

The Creation of Adam is a fresco painting by Italian artist Michelangelo, which forms part of the Sistine
Chapel's ceiling, painted c. 1508–1512. It illustrates the Biblical creation narrative from the Book of Genesis in which
God gives life to Adam, the first man.

Unlike the figure of God, who is outstretched and aloft, Adam is depicted as a lounging figure who rather lackadaisically responds to God’s imminent touch.  This touch will not only give life to Adam, but will give life to all mankind.  It is, therefore, the birth of the human race.  Adam’s body forms a concave shape which echoes the form of God’s body, which is in a convex posture inside the nebulous, floating form.  This correspondence of one form to the other seems to underscore the larger idea of Man corresponding to God; that is, it seems to reflect the idea that Man has been created in the image and likeness of God – an idea with which Michelangelo had to have been familiar.

One of the questions that has been raised about this scene is the identity of the figures next to God.  Given her privileged placement under the arm of God, the female figure is presumably an important one.  Traditionally, she has been thought to be Eve, the future wife of Adam, who waits to the side until she is created out of Adam’s rib.  More recently, however, a theory has been floated that this is actually the Virgin Mary, who takes this place of honor next to God and the child next to her, who would therefore be the Christ Child.

In all, the painting shows several hallmarks of Michelangelo’s painting style: the lounging position of both Adam and God, the use of bodies which are both muscular and twisting, and the painting of figures who come across as works of sculpture. It is good to remember that Michelangelo was, after all, a sculptor.  Painting was not his primary area.", category_ids: [3])

f.main_image.attach(io: File.open('./app/assets/seed_images/art.jpeg'), filename: 'art.jpeg')

puts 'creating article 7'

g = user2.articles.create!(title: 'The Most Influential Person In History', text: "Among the influences that shaped Western Civilization, there’s probably no story more significant than the “Jesus Story.” Even for religious skeptics, the historical influence of Jesus of Nazareth is the result of arguably the most influential life ever lived.

But why…?

Jesus was raised in humble Jewish surroundings in Roman-controlled Judea and Galilee, he never traveled more than 200 miles from his birthplace, he had a small group of simple followers, and he was killed for violating the religious laws of his own people. He never received political power, he never raised an army, and he never conquered territory. By historical standards, Jesus didn’t cut it as an influential figure in political, economic, or military power.

So, why the powerful influence — even today?

Why does about a third of the world call themselves his followers about 2,000 years later?

There must be something more to the story surrounding the historical influence of Jesus…

When Jesus was about 30-years-old, he started his public ministry around the Sea of Galilee. He was known for powerful teaching and a series of recorded miracles. Over the next three-plus years, his reputation spread throughout the region, although he tried to keep a low profile. The Roman rulers of the Jewish provinces and the religious leaders of the Jewish people kept an eye on him. But why…? It seems his main teachings in public were:
• God loves us.
• Love each other.
• People have unique value.
• The Kingdom of God has come to earth.
• God will judge us in the end.
• God forgives those who ask.

For some reason, Jesus became more and more of a perceived threat to the “organized religion” of the day.

Indeed, about one-third of the world is considered “Christian” today. That’s a pretty staggering number – that’s a pretty influential life after nearly 2,000 years. Yes, some religious institutions have confused and cluttered the original message of Jesus over the centuries, but his simple life and powerful words still speak for themselves.", category_ids: [4])

g.main_image.attach(io: File.open('./app/assets/seed_images/jesus.jpeg'), filename: 'jesus.jpeg')

puts 'creating article 8'

h = user2.articles.create!(title: 'Classical Music for Beginners', text: "Listening to classical music can be an enlightening, inspiring or relaxing experience, depending on your mood and what you’re listening to. But you can’t just play a song and immediately enjoy and understand it — like you can with pop music. Appreciating and taking pleasure in classical music takes time and effort, but it’s something everyone can do. Whether you’ve dabbled in a little classical music before or you’ve never heard a single note, here’s everything you need to know about how to listen to classical music.

What defines classical music?
Classical music can be difficult to define, but the term generally refers to music composed between 1750 and 1820. The music of Haydn, Mozart and most of Beethoven falls under this category. People first began to use the phrase “classical music” at the beginning of the 19th century, to describe a dazzling new era in music that fell between Bach (who was technically a Baroque composer) and Beethoven.

Although you don’t need to fully understand the definition of classical music to enjoy it, it certainly helps if you can comprehend that music is constantly being redefined. While Beethoven, Mozart and Haydn will always have their place in classical music, the genre didn’t begin with them and it certainly didn’t end with them.

Classical music lives on today, with composers writing scores for film productions, orchestras, solo performers, etc. There are even some bands and artists performing today whose songs are greatly influenced by classical music — whether they realise it or not!

Listening to classical music isn’t just an enjoyable hobby for people who like the genre. Scientific studies have proven there’s a host of benefits you can gain if you embrace the classical composers. ", category_ids: [2])

h.main_image.attach(io: File.open('./app/assets/seed_images/satie.jpeg'), filename: 'satie.jpeg')

puts 'creating article 9'

i = user5.articles.create!(title: 'Coachella: Redefining Live Music', text: "The Coachella Valley Music and Arts Festival is an annual music and arts festival held at the Empire Polo Club in Indio, California, in the Coachella Valley in the Colorado Desert. It was co-founded by Paul Tollett and Rick Van Santen in 1999, and is organized by Goldenvoice, a subsidiary of AEG Presents.

The origin of the name Coachella is unclear. Some locals believe it was a misspelling of Conchilla, a Spanish word for the small white snail shells found in the valley's sandy soil, vestiges of a lake that dried up over 3,000 years ago.

Coachella showcases popular and established musical artists as well as emerging artists and reunited groups. It is one of the largest, most famous, and most profitable music festivals in the United States and the world. Each Coachella staged from 2013 to 2015 set new records for festival attendance and gross revenues.

If you wanted to throw this party yourself, it would cost you $50M. But you can attend for just $500. It's a great deal, and it's worth every penny. Unquestionably, Coachella is worth the price of admission.

Coachella has become the bread and butter of music festivals. Known for its stacked, star-studded lineups, fashion trends and hippie-style camping experience in the deserts of Indio, the festival has developed a culture of its own. ", category_ids: [2])

i.main_image.attach(io: File.open('./app/assets/seed_images/coachella.jpeg'), filename: 'coachella.jpeg')

puts 'creating article 10'

j = user5.articles.create!(title: 'How K-Pop Shook The World', text: "It is 1992, and three young men in a boy band are performing in a live television talent contest. The sound is new: Korean lyrics, Euro pop, African American hip-hop and rap. They dance in sync. The studio audience goes wild. The judges in their prim suits are less impressed. They reveal their scorecards. The band gets the lowest mark of the night, and is voted off the show

The judges couldn't have got it more wrong.

In the next few days the song I Know climbs to the top of the charts, and stays there for a record-smashing 17 weeks. That night the group, Seo Taeji and Boys, ignites a revolution. Korean pop or K-pop was born.

K-pop is now a multi-billion-dollar industry. Bands like BTS and Blackpink are selling out in the US, UK and international stadiums within minutes. BTS is second only to Drake in international music sales. How did K-pop conquer the world? It’s a story with several parts.

Psy was not a Korean version of a big pop star. Psy was Korea's version of Psy, and it turns out that's what the world wanted – Bernie Cho.

It showed that you could be big and not sing entirely in English or be in vogue. The power of the music video transcended language. Just one of the official videos of Gangnam Style on YouTube had well over three billion views, the largest number of hits of any video at that time.

So, how did K-pop conquer the world? Clever design and brilliant marketing. But there's more to a K-pop band. It's an expression of Korean culture, and the government has been more than happy to capitalise on its success.", category_ids: [2])

j.main_image.attach(io: File.open('./app/assets/seed_images/blackpink.jpeg'), filename: 'blackpink.jpeg')

puts 'creating article 11'

k = user1.articles.create!(title: 'The Future is Remote', text: "While Covid-19 has left governments reeling, people dying, and millions affected negatively, it is also fair to say that not all the effects have been bad -- in fact, it's precisely because of this pandemic that a massive shift to remote work started to happen. With people prioritizing their health and safety, the appeal to become a digital nomad is very real. In fact, the pandemic accelerated the trend towards digital nomadism, despite travel restrictions.

The Covid-19 pandemic has rewritten the rules governing work, with employees choosing to ditch the office permanently in favour of remote work. While many are leaving cities to settle in more affordable and spacious locations, a small but growing number are taking the opportunity to become ‘digital nomads’, remote workers who travel the world. For employers, this tech-savvy community is a potential source of affordable digital skills – and governments are beginning to make it easier for digital nomads to work in their countries.
  
As the name suggests, digital nomads are a tech-savvy group. Of the digital nomads surveyed by MBO Partners, 12% work in IT, more than any other profession. Seventy-one percent say using technology makes them more competitive in their work, compared to 43% of non-nomads, and they are more likely to describe themselves as technology early adopters.
  
Digital nomads could therefore be an affordable source of in-demand technology skills, especially as companies become more comfortable with employees working remotely.
  
Digital nomadism is likely to be one dimension of a broader global redistribution of work following the pandemic and the resulting growth in remote work. “Jobs that can be done remotely can also be done offshore,” economist Carl Benedikt Frey told Tech Monitor last year. “In many cases, remote work is only a transitional phase before the next wave of offshoring as companies take advantage of new technologies, like telepresence, and cheaper labour in places like India.”
  
But for the time being, there are still reasons why employers might favour digital nomads over conventional offshoring, Frey adds. “A more significant barrier to offshoring than digital infrastructure is language,” he says. “Machine translation is improving rapidly but language and culture matter enormously for trade in services.”", category_ids: [6])
  
k.main_image.attach(io: File.open('./app/assets/seed_images/digitalnomad.jpeg'), filename: 'digitalnomad.jpeg')

puts 'creating article 12'

l = user2.articles.create!(title: 'Sushi is Life', text: "I love sushi. I have been eating it for years and found myself interested in making my own at home. Just throw some rice, fish, and veggies onto some seaweed and roll it. How hard could it be, right?! Wrong! It is not nearly as easy as the sushi chefs make it look. Those guys have been doing it for so long that it’s second nature to them. Me, on the other hand, with no sushi experience what-so-ever, other than eating it, decided last year to learn how to make it. So a few days before Valentine’s day. I planned to surprise my fiancé..

When in doubt, resort to the internet for help. I found a plethora of YouTube videos explaining everything from tools , to the ingredients, to all of the right techniques. I watched and took notes for a solid two hours. Since I only had three days to learn the art of sushi making, my new adventure began immediately. Long story short, the sushi turned out amazing! I’m not going to lie, I blew myself away. Just call me, Master Sushi Chef, yet the most amazing part was not the sushi, but the lessons that sushi has been teaching me ever since.
  
  
Always be prepared. Maki is the most common type of roll we might see at a Japanese restaurant. If I hadn’t spent all that time researching, I would have ended up with a raw fish rice bowl instead of Maki sushi. Like anything else, there are many unforeseen things that can go wrong when you’re doing something for the first time. The more we prepare ourselves, the more equipped we become are to handle any issues that can arise. In my research I found that the rice is the most important part of making sushi rolls. Get the wrong rice and it will never be right. Pheww! Dodged a bullet there! I was about to use some of the Uncle Ben’s sitting it my pantry. I’m so glad I took the time to understand all of the ingredients, and their role in the dish. After that, I watched videos on the fundamentals and techniques of preparing the rolls. I felt ready. Well, at least, I thought I was ready.
  
Shit happens. Roll with it. (No pun intended.) I’m not gonna lie, my first try was a bit of a disaster. Thank goodness I had an extra day to experiment before making Valentine’s Day dinner for the future Mrs. If I hadn’t, I might not be married today. There definitely were more tasks to do than I expected. Right out of the gate I tried doing everything at once. I was all over the place, and so were the ingredients. I was so frustrated. I could have given up and picked an easier recipe to make, but I was determined to make this work. Luckily for me, there was a hidden lesson in this mess. The best chefs in the world will say that prep time is the most important part of cooking. Now, I get it! The next day I spent a couple hours, before cooking the rice, just cutting vegetables, and organizing my cooking area. Everything was prepped and organized in front of me so that when the rice was ready, all I had to do was place the ingredients on the toasted sea weed sheet, roll, and slice. Every decision I now make, every meeting I attend, or every place a go, I spend at least a little time preparing for what is to come.", category_ids: [7])
    
l.main_image.attach(io: File.open('./app/assets/seed_images/aestheticsushi.jpeg'), filename: 'aestheticsushi.jpeg')
  
# rubocop:enable all
