class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :text
      t.string :link_target
      t.date :start_date
      t.date :end_date
      t.boolean :live

      t.timestamps
    end
  end
end
