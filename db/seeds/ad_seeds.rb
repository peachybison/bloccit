 require 'faker'
 
 # Create Posts
 50.times do
   Advertisement.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph,
     price: rand(100)
   )
 end
 advertisements = Advertisement.all
 



#   where()
# Post.each do |pp|
#   if pp.include?(mp)
#     delete pp
#   end
# end

 puts "Seed finished"
 puts "#{Advertisement.count} posts created"
