namespace :import do
  desc 'Import data from CSV'

  task :voters, [:filename] => :environment do |_t, args|
    require 'csv'

    puts "Importing #{args[:filename]}"

    import_array = []
    CSV.foreach("db/import_data/#{args[:filename]}", headers: true) do |row|
      next if row[6].blank?

      import_array << {
        number_in_division: row[0],
        last_name: row[1],
        first_name: row[2],
        middle_name: row[3],
        address: row[4],
        occupation: row[5],
        id_number: row[6],
        laa_name: row[7],
        constituency_name: row[8],
        division_name: row[9].to_s.gsub(/\b\d{5,6}[a-zA-Z]?\b/, '').strip,
        constituency_number: row[10],
        division_number: row[9].to_s.match(/\b(\d{5,6}[a-zA-Z]?)\b/)&.captures&.first,
        list_id: 1
      }
    end

    # get size of import array
    puts "Importing #{import_array.size} records"

    # import array (import_array) in into Import model batches of 5000 records
    import_array.each_slice(50_000) do |batch|
      puts "Importing #{batch.size} records"
      Elector.insert_all(batch)
    end
  end
end
