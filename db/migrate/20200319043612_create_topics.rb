class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.text :description
      t.text :description1
      t.text :description2
      t.text :description3
      t.string :image
      t.string :image1
      t.string :image2
      
      t.timestamps
    end
  end
end
