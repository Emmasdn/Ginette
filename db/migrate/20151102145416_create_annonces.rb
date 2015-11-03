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

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
