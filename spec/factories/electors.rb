FactoryBot.define do
  factory :elector do
    id_number { 1 }
    first_name { 'MyString' }
    middle_name { 'MyString' }
    last_name { 'MyString' }
    division_number { 'MyString' }
    division_name { 'MyString' }
    laa_name { 'MyString' }
    constituency_name { 'MyString' }
    address { 'MyString' }
    occupation { 'MyString' }
    constituency_number { 1 }
    number_in_division { 'MyString' }
    list
  end
end
