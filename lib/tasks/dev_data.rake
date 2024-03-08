namespace :dev_data do
  desc 'TODO'
  task all: %i[users lists electors]

  task users: :environment do
    puts 'Creating users'
    User.create!(email: 'admin@example.org', password: 'password', first_name: 'Admin', last_name: 'Admin')
  end

  task lists: :environment do
    puts 'Creating lists'
    List.create!(name: 'List 1')
  end

  task electors: :environment do
    puts 'Creating electors'

    electors_array = []

    # create 100 electors
    100.times do
      electors_array << {
        id_number: Faker::Number.number(digits: 8),
        first_name: Faker::Name.first_name,
        middle_name: Faker::Name.middle_name,
        last_name: Faker::Name.last_name,
        division_number: Faker::Number.number(digits: 6),
        division_name: Faker::Address.city,
        laa_name: Faker::Address.state,
        constituency_name: Faker::Address.city,
        address: Faker::Address.street_address,
        occupation: Faker::Job.title,
        constituency_number: Faker::Number.number(digits: 1),
        number_in_division: Faker::Number.number(digits: 3),
        list_id: 1
      }
    end

    Elector.insert_all!(electors_array)
  end
end
