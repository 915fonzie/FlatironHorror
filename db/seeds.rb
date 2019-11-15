# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
guest = User.new(first_name: "guest",last_name: "guest",username: "guest",campaign_1_finished: false, campaign_2_finished: false, campaign_3_finished: false)
guest.password = "1"
guest.save
Campaign.create(description: "this is the first campaign")
Storyline.create(header: "Enter",story_body: "You're a student at Flatiron School and you decided to finally check out the basement floor. When you get there, you happen to notice a figure popping out of one of the rooms...",img_url: "https://i.imgur.com/Zx8Ae12.jpg",campaign_id: 1,option_1_id: 2,option_1_text: "Enter Room" ,option_2_id:4, option_2_text: "Go to Hallway")
Storyline.create(header:"Mailroom",story_body: "You enter the room and realize that it's just a regular mailroom. But, as soon as you think about walking away you notice a package...",img_url: "https://i.imgur.com/5X3g31m.jpg",campaign_id: 1,option_1_id: 3,option_1_text: "Take Package"  , option_2_id: 4,option_2_text:"Go to Hallway" )
Storyline.create(header:"Angry Shawn",story_body: "Just as you take the package and turn around, Angry Shawn appears and kills you! You're dead now, oh well.",img_url: "https://i.imgur.com/GtRKpG9.jpg",campaign_id: 1,option_1_id: 0,option_2_id: 0)
Storyline.create(header:"Hallway",story_body: "As you enter the hallway you see a figure in the distance walking around sporadically...",img_url: "https://i.imgur.com/cwqq1VO.jpg",campaign_id: 1,option_1_id: 5, option_1_text: "Go Back to Elevator",option_2_text: "Go Further" ,option_2_id: 6)
Storyline.create(header:"Elevator Shawn",story_body: "As you try to head back upstairs, you start using your phone while you wait for the elevator. However, before you could even notice, Elevator Shawn attacks you and kills you. Good job.",img_url: "https://i.imgur.com/8G54Z3u.jpg",campaign_id: 1,option_1_id: 0,option_2_id: 0)
Storyline.create(header:"Sneek",story_body: "As you head a little further into the hallway, you see the figure seclude themselves to the corner of the wall...",img_url: "https://i.imgur.com/jaE3iTn.jpg",campaign_id: 1,option_1_id: 7, option_1_text: "Go into Bathroom",option_2_text: "Sneak Through" ,option_2_id: 10)
Storyline.create(header:"Bathroom",story_body: "You enter the bathroom frantically to make sure the figure does not notice you. But since you're already in the bathroom do you...",img_url: "https://i.imgur.com/7bUGDF9.jpg",campaign_id: 1,option_1_id: 8, option_1_text: "Use Toilet",option_2_text: "Use Shower" ,option_2_id: 9)
Storyline.create(header:"Toilet Death",story_body: "While you casually try to take a doodoo, Bathroom Shawn pops out of no where and you die from a heart attack. What a weird way to die.",img_url: "https://i.imgur.com/4sD8YCv.jpg",campaign_id: 1,option_1_id: 0,option_2_id: 0)
Storyline.create(header:"Embarrassing Death",story_body: "You take a nice long shower. As soon as you finish and head to get your towel, you see Bathroom Shawn sitting there waiting for you and you die from embarrassement. Well at least you died clean.",img_url: "https://i.imgur.com/rAI3wHV.jpg",campaign_id: 1,option_1_id: 0,option_2_id: 0)
Storyline.create(header:"Pathway",story_body: "You were able to sneak past the figure and now have a difficult decision to make...",img_url: "https://i.imgur.com/Fb0y5RE.jpg",campaign_id: 1,option_1_id: 11, option_1_text: "Go Towards The Creepy Doors",option_2_text: "Go Further" ,option_2_id: 13)
Storyline.create(header:"Are You Sure?",story_body: "As you approach the freight elevator with the really creepy doors, you ask yourself one more time...",img_url: "https://i.imgur.com/Q46o5wj.jpg",campaign_id: 1,option_1_id: 12, option_1_text: "Use Freight Elevator",option_2_text: "Go Deeper in Hallway" ,option_2_id: 14)
Storyline.create(header:"Crazy Shawn",story_body: "As soon as you try to enter, Crazy Shawn appears and makes you do algorithms until you die from exhaustion. What a cruel way to die.",img_url: "https://i.imgur.com/rnerD1f.jpg",campaign_id: 1,option_1_id: 0,option_2_id: 0)
Storyline.create(header:"Escaped",story_body: "In the end, you did not know who or what was that figure you saw, but one thing is certain, and that is that you never want to come down here again.",img_url: "https://i.imgur.com/PurJxhI.jpg",campaign_id: 1,option_1_id: 1,option_2_id: 1)
Storyline.create(header:"So Close...",story_body: "You were so close to the exit, but because of your previous hesitation, Monster Shawn noticed your presence and devoured you. You died but at least you were somebodies meal...",img_url: "https://i.imgur.com/tc8suzY.jpg",campaign_id: 1,option_1_id: 0,option_2_id: 0)

Campaign.create(description: "This is the second campaign")
Storyline.create(header:"Work in Progress", story_body: "",img_url: "",campaign_id: 2)
