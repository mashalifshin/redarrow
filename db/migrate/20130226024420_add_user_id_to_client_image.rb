class AddUserIdToClientImage < ActiveRecord::Migration
  def change
    add_column :client_images, :user_id, :integer
  end
end
