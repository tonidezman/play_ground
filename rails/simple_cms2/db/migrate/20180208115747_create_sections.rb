class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.integer :page_id
      t.string :name, default: ''
      t.text :description, default: 'Your long description here...'

      t.timestamps
    end

    add_index :sections, :page_id
  end
end
