 require 'faker'
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end

mp = {
  title: "JAM Test Post",
  body: "aaa bbb ccc ddd"
}

if Post.where(title: mp[:title]).count == 0
  Post.create(mp)
end


#   where()
# Post.each do |pp|
#   if pp.include?(mp)
#     delete pp
#   end
# end

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"