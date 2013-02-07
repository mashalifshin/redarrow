class AddLiveToAboutInfos < ActiveRecord::Migration
  def change
    add_column :about_infos, :live, :boolean, :default => false
  end
end
