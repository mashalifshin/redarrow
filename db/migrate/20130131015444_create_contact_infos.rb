class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
