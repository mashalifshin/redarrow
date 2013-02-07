class DropHomepages < ActiveRecord::Migration
  def up
    drop_table :homepages
  end

  def down
    create_table :homepages do |t|
      t.string :banner_text

      t.timestamps
    end
  end
end
