class RenameExhibitionImagesToImages < ActiveRecord::Migration
  def up
    change_table :exhibition_images do |t|
      t.rename :exhibition_image, :image
    end
  end

  def down
    change_table :exhibition_images do |t|
      t.rename :image, :exhibtion_image
    end
  end
end
