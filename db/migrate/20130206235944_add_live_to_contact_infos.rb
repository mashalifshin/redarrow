class AddLiveToContactInfos < ActiveRecord::Migration
  def change
    add_column :contact_infos, :live, :boolean, :default => false
  end
end
