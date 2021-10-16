class CreateSchoolHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :school_houses do |t|
      t.string :name
      t.text :url_logo
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
