FactoryBot.define do
  factory :elector do
    id_number { Faker::Number.number(digits: 8) }
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    division_number { Faker::Number.number(digits: 6) }
    division_name { Faker::Address.city }
    laa_name { Faker::Address.state }
    constituency_name { Faker::Address.city }
    address { Faker::Address.street_address }
    occupation { Faker::Job.title }
    constituency_number { Faker::Number.number(digits: 1) }
    number_in_division { Faker::Number.number(digits: 3) }
    list
  end
end
