class CreateElectors < ActiveRecord::Migration[7.1]
  def change
    create_table :electors do |t|
      t.integer :id_number
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :division_number
      t.string :division_name
      t.string :laa_name
      t.string :constituency_name
      t.string :address
      t.string :occupation
      t.integer :constituency_number
      t.integer :number_in_division
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
