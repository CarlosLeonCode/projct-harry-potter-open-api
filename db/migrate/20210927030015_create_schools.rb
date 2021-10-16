class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :url_logo

      t.timestamps
    end
  end
end
