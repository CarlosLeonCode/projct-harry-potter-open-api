class CreateSchoolHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :school_houses do |t|
      t.string :name

      t.timestamps
    end
  end
end
