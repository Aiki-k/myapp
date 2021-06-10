class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :title, null: false
      t.string :text,null: false
      t.integer :genre_id,null: false
      t.timestamps
    end
  end
end
  