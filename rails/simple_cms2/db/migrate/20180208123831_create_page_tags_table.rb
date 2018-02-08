class CreatePageTagsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :pages_tags, id: false do |t|
      t.belongs_to :page, index: true
      t.belongs_to :tag, index: true
    end
  end
end
