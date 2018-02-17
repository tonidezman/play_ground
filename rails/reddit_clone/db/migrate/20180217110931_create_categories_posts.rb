class CreateCategoriesPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_posts do |t|
      t.integer :post_id, index: true
      t.integer :category_id, index: true
    end
  end
end
