# == Schema Information
#
# Table name: electors
#
#  id                  :bigint           not null, primary key
#  id_number           :integer
#  first_name          :string
#  middle_name         :string
#  last_name           :string
#  division_number     :string
#  division_name       :string
#  laa_name            :string
#  constituency_name   :string
#  address             :string
#  occupation          :string
#  constituency_number :integer
#  number_in_division  :integer
#  list_id             :bigint           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
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
