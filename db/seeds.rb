require "open-uri"

puts "destroying entire database..."
User.destroy_all
Prank.destroy_all
Booking.destroy_all

puts "Creating Users, and Pranks..."
User.create!([email: "test@test.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name])
10.times { User.create!([email: Faker::Internet.email, password: "te23th", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name]) }

sticky_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622181903/sticky_pt4j7s.png")
sticky = Prank.create!(name: "Cover something in sticky notes", content: "I will cover the requested item in sticky notes. Disclaimer: I won't do anything illegal (break into someones house etc.)", price: 5000, city:'Ichikawa', user: User.all.sample)
sticky.photo.attach(io: sticky_img, filename: 'prank.png', content_type: 'image/png')

bucket_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622472060/image_cpqmbu.png")
bucket = Prank.create!(name: "Install water bucket prank", content: "I will professionally install a waterbucket in the place of your choosing. Most common places include: Bedroom door and Bathroom door.", price: 2000, city:'Yokohama', user: User.all.sample)
bucket.photo.attach(io: bucket_img, filename: 'bucket.png', content_type: 'imag/png')

zoo_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102252/c667c3bd8ceb477f7116179a1238bcd9_zuge9a.png")
zoo = Prank.create!(name: "Turn backyard into petting zoo", content: "I will turn the targets backyard into a petting zoo. Note: Someone should distract them while I setup the petting zoo.", price: 20000, city:'Tokyo', user: User.all.sample)
zoo.photo.attach(io: zoo_img, filename: 'zoo.png', content_type: 'imag/png')

jose_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622181903/jose_omodvi.png")
jose = Prank.create!(name: "Act like Jose in front of other people", content: "I will eat a ton of dust", price: 500, city:'Meguro', user: User.all.sample)
jose.photo.attach(io: jose_img, filename: 'jose.png', content_type: 'imag/png')

tp_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102243/90d63239d45d03182c8ad9047cf2ea29_umjexa.png")
tp = Prank.create!(name: "TP something", content: "I will cover the requested object with toilet paper", price: 5000, city:'Ichikawa', user: User.all.sample)
tp.photo.attach(io: tp_img, filename: 'tp.png', content_type: 'imag/png')

kenn_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622183627/kenn_awjfjk.png")
kenn = Prank.create!(name: "Laugh for five minutes", content: "I will laugh for five minutes in front of an audience", price: 500, city:'Meguro', user: User.all.sample)
kenn.photo.attach(io: kenn_img, filename: 'kenn.png', content_type: 'imag/png')

scare_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622181903/ryan_v7clrn.png")
scare = Prank.create!(name: "Scare someone", content: "I will scare the target by jumping at them while I'm hiding somewhere", price: 1500, city:'Shinjuku', user: User.all.sample)
scare.photo.attach(io: scare_img, filename: 'scare.png', content_type: 'imag/png')

water_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102662/summer-balloon_q2odi9.png")
water = Prank.create!(name: "Throw water balloons", content: "I will throw water balloons at the requested target", price: 1500, city:'Shibuya', user: User.all.sample)
water.photo.attach(io: water_img, filename: 'water.png', content_type: 'imag/png')

glitter_img = URI.open("https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622103711/glittersparkles_jyhygv.png")
glitter = Prank.create!(name: "Send a glitter bomb", content: "I will send a glitter bomb to the requested address", price: 500, city:'Tokyo', user: User.all.sample)
glitter.photo.attach(io: glitter_img, filename: 'glitter.png', content_type: 'imag/png')

puts "Created #{User.count} users and #{Prank.count} pranks..."
