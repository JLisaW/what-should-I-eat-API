class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.references :user, foriegn_key: true
      t.string :food
      t.timestamps
    end
  end
end
