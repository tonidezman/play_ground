class CreateSectionEdits < ActiveRecord::Migration[5.1]
  def change
    create_table :section_edits do |t|
      t.integer :admin_user_id
      t.integer :page_id

      t.timestamps
    end

    add_index(:section_edits, [:admin_user_id, :page_id])
  end
end
