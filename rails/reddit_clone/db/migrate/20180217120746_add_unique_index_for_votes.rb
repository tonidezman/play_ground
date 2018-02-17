class AddUniqueIndexForVotes < ActiveRecord::Migration[5.1]
  def change
    add_index :votes, [:votable_type, :votable_id, :user_id], unique: true
  end
end
