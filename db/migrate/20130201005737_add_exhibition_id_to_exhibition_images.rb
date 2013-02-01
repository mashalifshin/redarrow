class AddExhibitionIdToExhibitionImages < ActiveRecord::Migration
  def change
    add_column :exhibition_images, :exhibition_id, :integer
  end
end
