class AddInfoOrderToContactInfo < ActiveRecord::Migration
  def change
    add_column :contact_infos, :info_order, :integer
  end
end
