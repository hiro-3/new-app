class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.integer :number
      t.integer :number1 
      t.string :image
      t.string :image1
      t.string :description
      t.string :description1
      t.string :description2
    
      
      t.timestamps
    end
  end
end
