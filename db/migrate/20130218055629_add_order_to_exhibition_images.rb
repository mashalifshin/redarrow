class AddOrderToExhibitionImages < ActiveRecord::Migration
  def change
    add_column :exhibition_images, :order, :integer
  end
end
