class CreateHistoryInfos < ActiveRecord::Migration
  def change
    create_table :history_infos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
