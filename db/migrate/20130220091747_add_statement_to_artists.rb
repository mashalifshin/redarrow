class AddStatementToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :statement, :text
  end
end
