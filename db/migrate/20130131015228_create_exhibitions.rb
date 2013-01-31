class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.datetime :reception_date
      t.date :opening
      t.date :closing
      t.text :description

      t.timestamps
    end
  end
end
