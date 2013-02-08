class AddReceptionEndTimeToExhibitions < ActiveRecord::Migration
  def change
    add_column :exhibitions, :reception_end_time, :time
  end
end
