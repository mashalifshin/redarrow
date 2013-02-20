class AddDetailsToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :bio, :text
    add_column :artists, :cv, :string
    add_column :artists, :press, :string
  end
end
