class RemoveBioFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :bio
  end

  def down
    add_column :artists, :bio, :text
  end
end
