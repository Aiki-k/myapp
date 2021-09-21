class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true
      t.timestamps
    end
    # add_index :checks, [:user_id, :tweet_id], unique: true
  end
end