User.create!(name:  "Example User",
             email: "user1@test.com",
             password: "asdasd",
             password_confirmation: "asdasd")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "asdasd"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
