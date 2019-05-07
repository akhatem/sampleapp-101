image_admin = Rails.root.join("app/assets/images/little_kid.jpeg").open
User.create!(name:  "Kareem User",
             email: "kareem@admin.me",
             password: "Asdasd",
             password_confirmation: "Asdasd",
             admin: true,
             activated: true,
             activated_at: Time.zone.now,
             image: image_admin)

User.create!(name:  "Hatem ElShawadfy",
            email: "hatem@admin.com",
            password: "123456",
            password_confirmation: "123456",
            admin: true,
            activated: true,
            activated_at: Time.zone.now,
            image: Rails.root.join("app/assets/images/profileImg.jpeg").open)

User.create!(name:  "Kareem User",
             email: "kareem@admin.me",
             password: "Asdasd",
             password_confirmation: "Asdasd",
             admin: false,
             activated: true,
             activated_at: Time.zone.now,
             image: Rails.root.join("app/assets/images/default-img.jpeg").open)



99.times do |n|
  name  = Faker::Name.name
  email = "test-#{n+1}@example.com"
  password = "asdasd"
  image_faker = Rails.root.join("app/assets/images/default-img.jpeg").open
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now, image: image_faker)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
