class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.string :title, null: false
      t.string :food, null: false
      t.references :user, index: true, foreign_key: true, null: true

      t.timestamps
    end
  end
end
