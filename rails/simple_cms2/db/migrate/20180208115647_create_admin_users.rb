class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users do |t|
      t.string :name, limit: 50, null: false
      t.string :email, limit: 255, null: false
      t.string :password_hash, null: false

      t.timestamps
    end

    add_index :admin_users, :email, unique: true
  end
end
