class AddDetailsToExhibitionImages < ActiveRecord::Migration
  def change
    add_column :exhibition_images, :artist, :string
    add_column :exhibition_images, :title, :string
    add_column :exhibition_images, :year, :integer
    add_column :exhibition_images, :media, :string
    add_column :exhibition_images, :dimensions, :string
  end
end
