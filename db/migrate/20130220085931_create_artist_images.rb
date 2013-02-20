class CreateArtistImages < ActiveRecord::Migration
  def change
    create_table :artist_images do |t|
      t.string :image
      t.integer :artist_id
      t.string :title
      t.integer :year
      t.string :media
      t.string :dimensions

      t.timestamps
    end
  end
end
