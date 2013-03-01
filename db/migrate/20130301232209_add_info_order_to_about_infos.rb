class AddInfoOrderToAboutInfos < ActiveRecord::Migration
  def change
    add_column :about_infos, :info_order, :integer
  end
end
