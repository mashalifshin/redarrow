class AddUploadFieldsToExhibitions < ActiveRecord::Migration
  def change
    add_column :exhibitions, :press_release, :string
    add_column :exhibitions, :poster, :string
  end
end
