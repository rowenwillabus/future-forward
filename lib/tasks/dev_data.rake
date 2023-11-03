namespace :dev_data do
  desc 'TODO'
  task all: %i[users]

  task users: :environment do
    puts 'Creating users'
    # User.create!(email: 'admin@example.org', password: 'password')
  end
end
