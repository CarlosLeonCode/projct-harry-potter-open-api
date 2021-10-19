class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :lastname
      t.references :genre, null: false, foreign_key: true
      t.text :real_photo
      t.text :cartoon_photo

      t.timestamps
    end
  end
end
