class CreateClientImages < ActiveRecord::Migration
  def change
    create_table :client_images do |t|
      t.string :image
      t.string :artist
      t.string :title
      t.integer :year
      t.string :media
      t.string :dimensions
      t.text :comment
      t.integer :view_order

      t.timestamps
    end
  end
end
