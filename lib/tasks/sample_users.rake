namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
  
	admin = User.create!(name: "Admin",
                         email: "Admin@abc.com",
                         password: "Admin0",
                         password_confirmation: "Admin0",
                         admin: true)
						 
	notadmin = User.create!(name: "NotAdmin",
                         email: "NotAdmin@abc.com",
                         password: "NotAdmin",
                         password_confirmation: "NotAdmin",
                         admin: false)
  
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@abc.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end