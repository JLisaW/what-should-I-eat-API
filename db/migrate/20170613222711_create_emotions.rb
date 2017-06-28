class CreateEmotions < ActiveRecord::Migration[5.0]
  def change
    create_table :emotions do |t|
      t.string :mood, null: false
      t.string :food, null: false
      t.references :user, index: true, foreign_key: true, null: true

      t.timestamps
    end
  end
end
