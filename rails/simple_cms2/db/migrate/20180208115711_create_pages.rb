class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.integer :subject_id
      t.string :name

      t.timestamps
    end
  end
end
