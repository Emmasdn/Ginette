class AddCityToAnnonces < ActiveRecord::Migration
  def change
    add_column :annonces, :city, :string
  end
end


