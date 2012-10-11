class AddUserAdminColumn < ActiveRecord::Migration
  def up
    add_column :users, :isadmin, :boolean, :default => false
  end

  def down
    remove_column :users, :isadmin
  end
end
