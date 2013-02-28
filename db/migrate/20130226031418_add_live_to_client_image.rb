class AddLiveToClientImage < ActiveRecord::Migration
  def change
    add_column :client_images, :live, :boolean
  end
end
