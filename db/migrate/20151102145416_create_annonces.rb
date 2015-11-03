class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :name
      t.string :adresse
      t.integer :price
      t.text :description
      t.integer :child_number
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end


end
