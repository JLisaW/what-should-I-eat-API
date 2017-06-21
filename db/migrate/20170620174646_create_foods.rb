class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.integer :id
      t.string :mood, null: false
      t.references :user, index: true, foreign_key: true, null: true

      t.timestamps
    end
  end
end
