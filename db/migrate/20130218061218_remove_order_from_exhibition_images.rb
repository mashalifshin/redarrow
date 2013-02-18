class RemoveOrderFromExhibitionImages < ActiveRecord::Migration
  def up
    remove_column :exhibition_images, :order
  end

  def down
    add_column :exhibition_images, :order, :integer
  end
end
