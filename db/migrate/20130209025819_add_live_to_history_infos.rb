class AddLiveToHistoryInfos < ActiveRecord::Migration
  def change
    add_column :history_infos, :live, :boolean
  end
end
