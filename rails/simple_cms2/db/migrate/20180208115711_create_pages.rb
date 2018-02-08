class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.integer :subject_id
      t.string :name, default: ''

      t.timestamps
    end

    add_index :pages, :subject_id
  end
end
