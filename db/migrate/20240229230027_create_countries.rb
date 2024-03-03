class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :iso2, null: true
      t.string :iso3, null: true
      t.timestamps
    end
  end
end
