class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :votable_type
      t.integer :user_id, index: true
      t.integer :votable_id, index: true

      t.timestamps
    end
  end
end
