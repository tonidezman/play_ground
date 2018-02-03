class CreateTonkos < ActiveRecord::Migration[5.1]
  def change
    create_table :tonkos do |t|
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end
