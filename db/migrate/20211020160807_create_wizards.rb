class CreateWizards < ActiveRecord::Migration[6.1]
  def change
    create_table :wizards do |t|
      t.references :person, null: false, foreign_key: true
      t.string :wand_name

      t.timestamps
    end
  end
end
