class AddLiveToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :live, :boolean, :default => false
  end
end
