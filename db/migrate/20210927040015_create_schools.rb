class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.references :school_house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
