class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.string :emotion
      t.string :food
      t.integer :user_id
      t.references :user, index: true, foreign_key: true, null: true

      t.timestamps
    end
  end
end
