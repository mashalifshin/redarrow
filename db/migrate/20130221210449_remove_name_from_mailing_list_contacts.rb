class RemoveNameFromMailingListContacts < ActiveRecord::Migration
  def up
    remove_column :mailing_list_contacts, :name
  end

  def down
    add_column :mailing_list_contacts, :name, :string
  end
end
