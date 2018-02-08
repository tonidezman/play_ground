class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :page_id
      t.text :description

      t.timestamps
    end
  end
end
