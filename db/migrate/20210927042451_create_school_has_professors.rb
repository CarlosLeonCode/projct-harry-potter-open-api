class CreateSchoolHasProfessors < ActiveRecord::Migration[6.1]
  def change
    create_table :school_has_professors do |t|
      t.references :school, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
