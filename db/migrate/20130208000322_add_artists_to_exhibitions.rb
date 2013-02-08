class AddArtistsToExhibitions < ActiveRecord::Migration
  def change
    add_column :exhibitions, :artists, :string
  end
end
