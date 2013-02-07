class AddLiveToExhibitions < ActiveRecord::Migration
  def change
    add_column :exhibitions, :live, :boolean, :default => false
  end
end
