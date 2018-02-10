class ChangeColumnPasswordHashToPasswordDigest < ActiveRecord::Migration[5.1]
  def change
    rename_column :admin_users, :password_hash, :password_digest
  end
end
