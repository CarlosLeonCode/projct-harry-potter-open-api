class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :related_to
      t.string :skin_color
      t.string :eye_color
      t.string :mortality
      t.text :img

      t.timestamps
    end
  end
end
