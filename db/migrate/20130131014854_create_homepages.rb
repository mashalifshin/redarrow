class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :banner_text

      t.timestamps
    end
  end
end
