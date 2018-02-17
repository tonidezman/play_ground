class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
