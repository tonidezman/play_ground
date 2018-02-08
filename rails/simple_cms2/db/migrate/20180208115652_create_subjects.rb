class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name, default: ''

      t.timestamps
    end
  end
end
