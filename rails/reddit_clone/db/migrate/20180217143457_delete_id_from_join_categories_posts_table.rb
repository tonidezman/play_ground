class DeleteIdFromJoinCategoriesPostsTable < ActiveRecord::Migration[5.1]
  def up
    remove_column :categories_posts, :id
  end

  def down
    add_column :categories_posts, :id, :primary_key
  end
end
