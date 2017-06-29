class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :food_item
      t.integer :id
      t.string :emotion, null: false
      t.references :user, index: true, foreign_key: true, null: true

      t.timestamps
    end
  end
end
