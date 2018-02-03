class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.integer :page_id
      t.string :name, default: ''
      t.string :position
      t.boolean :visible, default: true
      t.string :content_type
      t.text :content

      t.timestamps
    end

    add_index(:sections, :page_id)
  end
end
