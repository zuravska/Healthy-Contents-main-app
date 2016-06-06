class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :default, :string
    add_column :users, :false, :string
  end
end
