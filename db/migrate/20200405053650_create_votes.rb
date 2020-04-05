class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :description
      t.timestamps
    end
  end
end
