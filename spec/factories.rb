FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "#{ Faker::Name::first_name } #{ Faker::Name::last_name }_#{n}_#{rand(10000).to_s}" }
    # sequence(:email) { |n| "person_#{n}@example.com"}
	# name { "#{ Faker::Name::first_name } #{ Faker::Name::last_name }_#{rand(1000).to_s}" }
	email { "#{name.gsub(/[^0-9a-zA-Z]/, '')}@abc.com".downcase }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
  
end