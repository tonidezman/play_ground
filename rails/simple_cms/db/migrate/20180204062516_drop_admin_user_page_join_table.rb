class DropAdminUserPageJoinTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :admin_users_pages
  end
end
