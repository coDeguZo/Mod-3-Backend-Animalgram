# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
User.destroy_all
Post.destroy_all
Friend.destroy_all

user1 = User.create(username: "richardbobo", fullname: "Richard Bobo", bio: "I love dogs.")
user2 = User.create(username: "dawitgizaw", fullname: "Dawit Gizaw", bio: "I am an animal lover")
user3 = User.create(username: "carolbaskin", fullname:"Carol Baskin", bio: "I love big cats")
user4 = User.create(username: "joeexotic", fullname:"Joe Exotic", bio:"I love cats and hate Carole Baskin.")
user5 = User.create(username: "danny2thumbs", fullname: "Danny Succar", bio: "Free Joe Exotic!")
user6 = User.create(username: "BretHitmanHart", fullname: "Bret Gibson", bio: "I'm a sharpshooter")

# richard is following dawit
friend1 = Friend.create(follower_id: user1.id, follow_id: user2.id) 
# dawit is following carol baskin
friend2 = Friend.create(follower_id: user2.id, follow_id: user3.id)
# carol baskin is following joe exotic
friend3 = Friend.create(follower_id: user3.id, follow_id: user4.id)
# carol baskin is following Danny
friend4 = Friend.create(follower_id: user3.id, follow_id: user5.id)





# Can come back later to change post text.
post1 = Post.create(user_id: user1.id, location: "Washington D.C", post_text: "This dog is so adorable!!", graphic_url: "https://i.insider.com/5df126b679d7570ad2044f3e?width=1100&format=jpeg") 
post2 = Post.create(user_id: user2.id, location: "Las Vegas, NV", post_text: "Cat Swag!", graphic_url: "https://i.imgur.com/qI9wxm5.jpg")
post3 = Post.create(user_id: user2.id, location: "Miami, FL", post_text: "I can't wait to see this animal at the zoo next week!!", graphic_url: "https://www.indianapoliszoo.com/wp-content/uploads/2018/04/CROPPED_Elephant_Tombi-Fred_Cateresizedresized.jpg")
post4 = Post.create(user_id: user2.id, location: "San Diago, CA", post_text: "My heart melts with lovee seeing these pigs :)", graphic_url: "https://images.newscientist.com/wp-content/uploads/2020/01/29095610/gettyimages-1146002928.jpg")
post5 = Post.create(user_id: user5.id, location: "Congo DRC", post_text: "I can't believe I haven't seen this bird yet", graphic_url: "https://images.pexels.com/photos/326900/pexels-photo-326900.jpeg")
post6 = Post.create(user_id: user5.id, location: "North Korea", post_text: "I love my dog <3 <3", graphic_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/golden-retriever-dog-royalty-free-image-505534037-1565105327.jpg")
post7= Post.create(user_id: user3.id, location: "Tokyo, Japan", post_text: "I can't wait to adopt this dog!", graphic_url: "https://images.wagwalkingweb.com/media/breed/pug-zu/hero/Pug-Zu.jpg")
post8 = Post.create(user_id: user4.id, location: "Toronto", post_text: "Why can't it be summer!  So want to ride a horse", graphic_url: "https://ichef.bbci.co.uk/news/1024/cpsprodpb/1245A/production/_103224847_horsea.png")
post9 = Post.create(user_id: user6.id, location: "Houston, TX", post_text: "Saw these in the wild yesterday lol", graphic_url: "https://cdn.britannica.com/16/93516-050-3FB4ABE4/Cape-porcupine.jpg")
post10 = Post.create(user_id: user3.id, location: "Beijing, China", post_text: "I looooooove Pandasssss", graphic_url: "https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photos/5465887/6a010535647bf3970b017ee997dd63970d-500wi.jpg")
post11 = Post.create(user_id: user4.id, location: "Santa Monica, CA", post_text: "Wow saw this in the ocean OMG", graphic_url: "https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photos/5465887/6a010535647bf3970b017ee997dd63970d-500wi.jpg")


#creat comment seeds, may need to update post IDs to make comments relevant
#1 comment from each of 6 users
comment1 = Comment.create(user_id: user1.id, post_id: post1.id, comment_text: "Love this!" )
comment2 = Comment.create(user_id: user2.id, post_id: post2.id, comment_text: "Aww kitty kitty." )
comment3 = Comment.create(user_id: user3.id, post_id: post8.id, comment_text: "Cute!" )
comment4 = Comment.create(user_id: user4.id, post_id: post9.id, comment_text: "Screw you Carol Baskin!" )
comment5 = Comment.create(user_id: user5.id, post_id: post10.id, comment_text: "Great photo!" )
comment6 = Comment.create(user_id: user6.id, post_id: post8.id, comment_text: "Awww..." )
#2nd commentfrom eah of the 6 users
comment7 = Comment.create(user_id: user1.id, post_id: post7.id, comment_text: "<3" )
comment8 = Comment.create(user_id: user2.id, post_id: post6.id, comment_text: "Now I want a pet!" )
comment9 = Comment.create(user_id: user3.id, post_id: post5.id, comment_text: "lol" )
comment10 = Comment.create(user_id: user4.id, post_id: post4.id, comment_text: "When did you take this photo? " )
comment11 = Comment.create(user_id: user5.id, post_id: post3.id, comment_text: "love it!" )
comment12 = Comment.create(user_id: user6.id, post_id: post2.id, comment_text: "eh... my pet is cuter." )


#a few aniaml support organizations
org1 = Organization.create(name: "People for the Ethical Treatment of Animals", website: "www.peta.org", description: "People for the Ethical Treatment of Animals is an American animal rights organization based in Norfolk, Virginia, and led by Ingrid Newkirk, its international president.", image: "https://www.peta.org/wp-content/uploads/2013/10/Twitter.jpeg")
org2 = Organization.create(name: "Big Cat Rescue", website: "https://bigcatrescue.org/", description: "Big Cat Rescue, one of the world’s largest accredited sanctuaries for exotic cats, is a leading advocate for ending the abuse of captive big cats and saving wild cats from extinction.  We are the most hated, feared and lied about by circuses, backyard breeders, roadside zoos, cub petting pimps apseudo-sanctuariesies because we are the most effective at ending the abuse of big cats", image: "https://i.ytimg.com/vi/7jSaPl4Q9uc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCL4En2S7uxic_JCPIqx1kCSblDkQ")
org3 = Organization.create(name: "World Wide Fund for Nature", website: "https://www.worldwildlife.org/", description: "The World Wide Fund for Nature is an international non-governmental organization founded in 1961, working in the field of wilderness preservation, and the reduction of human impact on the environment. It was formerly named the World Wildlife Fund, which remains its official name in Canada and the United States.", image: "https://fundraising.co.uk/wp-content/uploads/2019/12/pasted-image-0-1-copy-e1575529107115.png")

#likes for posts 
#post1
like1 = Like.create(post_id: post1.id, user_id: user1.id)
like2 = Like.create(post_id: post1.id, user_id: user2.id)
like3 = Like.create(post_id: post1.id, user_id: user3.id)
#post2
like4 = Like.create(post_id: post2.id, user_id: user5.id)
like5 = Like.create(post_id: post2.id, user_id: user6.id)
#post3
like6 = Like.create(post_id: post3.id, user_id: user4.id)
like7 = Like.create(post_id: post3.id, user_id: user5.id)
#post4
like8 = Like.create(post_id: post4.id, user_id: user4.id)
like9 = Like.create(post_id: post4.id, user_id: user2.id)
like10 = Like.create(post_id: post4.id, user_id: user1.id)
#post5-9
like11 = Like.create(post_id: post5.id, user_id: user4.id)
like12 = Like.create(post_id: post6.id, user_id: user2.id)
like13 = Like.create(post_id: post7.id, user_id: user5.id)
like14 = Like.create(post_id: post8.id, user_id: user6.id)
like15 = Like.create(post_id: post9.id, user_id: user1.id)
#post10
like16 = Like.create(post_id: post10.id, user_id: user2.id)
like17 = Like.create(post_id: post10.id, user_id: user5.id)
like18 = Like.create(post_id: post10.id, user_id: user6.id)
#post11
like19 = Like.create(post_id: post11.id, user_id: user1.id)
like20 = Like.create(post_id: post11.id, user_id: user3.id)
like21 = Like.create(post_id: post11.id, user_id: user4.id)