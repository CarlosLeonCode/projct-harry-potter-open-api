class AddAttributesToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :ocupation, :string
    add_column :people, :wand, :string
    add_column :people, :patronus, :string
    add_reference :people, :school_house, null: true, foreign: true
  end
end
