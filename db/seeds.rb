# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@u1 = User.create(username: "connie", description: "California Condor", password: "12345678")
@u2 = User.create(username: "paul", description: "Giant Panda", password: "12345678")
@u3 = User.create(username: "elsa", description: "African Elephant", password: "12345678")

@p1 = Post.create(user: @u3, title: "Rescuers Rush To Save Little Elephant That Fell Into Well", body: "Dozens of forest workers in India teamed up to rescue a young elephant that had fallen into a well.

Video from the scene in Kerala shows the six-year-old elephant at the bottom of the well in water almost up to its trunk.

The forest workers brought in a backhoe to dig out the well. As it neared the bottom, the little elephant appeared to try to help by using its trunk to dig the dirt.

Eventually, after five hours of digging by rescuers, the elephant was able to climb out and escape, according to Reuters.

ANI News reports that the elephant suffered minor injuries.")

@p2 = Post.create(user: @u3, title: "Here's 2 Minutes Of Nothing But Adorable Clumsy Baby Elephants", body: "Dear Mother Nature,

We aren't sure what you were thinking when you made baby elephants. Were you aware their ears and trunk would flop everywhere comically, or did that just happen by chance and you decided to roll with it? How did you fit so much cute into one clumsy little creature? Regardless, we just wanted to drop you a line to say thank you, and keep up the good work.

In honor of the animal, here's two straight minutes of baby elephants doing what they do best: Stealing our hearts, one awkward step at a time.")

@p3 = Post.create(user: @u2, title: "Toronto zoo's 2 giant panda cubs growing fast", body: "The two giant panda cubs born at the Toronto Zoo just weeks ago have tripled in size, zookeepers say.

The cubs have developed more white fuzz over their bodies, while their black markings and thicker fur is also starting to come in. And the cubs are developing thumb pads on their paws which will help them hold bamboo when they are older.

The smaller panda of the two is now 20 centimetres long and weighs 422 grams. The larger cub is 23 centimetres and weighs 672 grams.

Er Shun is one of two pandas on loan to the zoo from China. Along with the cubs, she has been under constant observation by experts from Chengdu Research Base of Giant Panda Breeding in China since their birth.

The zoo says she continues to be a great mother to the cubs.")
@p4 = Post.create(user: @u2, title: "Giant panda twins say goodbye to Chinese nursery", body: "Twelve giant panda cubs in China prepare to leave their nursery as they turn three months old. The six pairs of twins were artificially-conceived in a Chinese breeding centre this year. Researchers say the cubs are gaining weight at an average of 50 grammes a day and are all in good health")
@p5 = Post.create(user: @u1, title: "Pinnacles Condor Program" , body: "Pinnacles National Park joined the California Condor Recovery Program as a release and management site in 2003. The park currently manages 32 free-flying condors. For more information on individual condors, visit our profiles page. Park biologists use a variety of techniques to manage and monitor the population.")
@p6 = Post.create(user: @u1, title: "California condors coming soon to San Luis Obispo County", body: "Seven juvenile California condors will be relocated from Big Sur’s Ventana Wilderness to the rugged hills east of San Simeon this July as part of the California Condor Recovery Program. The endangered species is North America's largest land bird.")
