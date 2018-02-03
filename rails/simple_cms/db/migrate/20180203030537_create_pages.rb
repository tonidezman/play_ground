class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      # t.references :subject
      t.integer :subject_id
      t.string :name, default: '', null: false
      t.integer :permalink, null: false
      t.integer :position
      t.boolean :visible, default: true
      t.timestamps

    end

    add_index(:pages, :subject_id)
    add_index(:pages, :permalink)
  end
end
