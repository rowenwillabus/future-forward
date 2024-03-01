class CreateResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :responses do |t|
      t.references :elector, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.text :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
