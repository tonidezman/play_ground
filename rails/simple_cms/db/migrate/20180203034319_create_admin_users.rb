class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users do |t|
      t.string :username, limit: 25
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
