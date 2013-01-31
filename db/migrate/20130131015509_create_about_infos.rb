class CreateAboutInfos < ActiveRecord::Migration
  def change
    create_table :about_infos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
