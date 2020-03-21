class CreateFavorite1s < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite1s do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :comment


      t.timestamps
    end
  end
end
