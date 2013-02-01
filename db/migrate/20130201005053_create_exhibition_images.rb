class CreateExhibitionImages < ActiveRecord::Migration
  def change
    create_table :exhibition_images do |t|

      t.timestamps
    end
  end
end
