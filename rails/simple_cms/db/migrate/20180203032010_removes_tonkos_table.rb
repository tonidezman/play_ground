class RemovesTonkosTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :tonkos
  end

  def down
    create_table :tonkos do |t|
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end
