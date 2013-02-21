class AddImageToAboutInfos < ActiveRecord::Migration
  def change
    add_column :about_infos, :image, :string
  end
end
