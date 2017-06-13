class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.string :food, null: false
      t.references :user, index: true, foriegn_key: true, null: true

      t.timestamps
    end
  end
end
