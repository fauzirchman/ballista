class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.datetime :birthday
      t.string :gender
      t.string :location
      t.text :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
