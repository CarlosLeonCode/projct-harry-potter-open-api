class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.references :school_house, null: false, foreign_key: true
      t.references :school, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.string :pet_name
      t.string :pet_img
      
      t.timestamps
    end
  end
end
