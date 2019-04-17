User.create!(name:  "Kareem User",
             email: "kareem@admin.me",
             password: "Asdasd",
             password_confirmation: "Asdasd",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "test-#{n+1}@example.com"
  password = "asdasd"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
