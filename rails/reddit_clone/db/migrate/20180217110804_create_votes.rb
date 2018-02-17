class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :votable_type
      t.integer :votable_id
      t.integer :user_id, index: true
      t.timestamps
    end
    add_index :votes, [:votable_type, :votable_id]
  end
end
