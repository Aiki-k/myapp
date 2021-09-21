class AddCheckedToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :checked, :boolean
  end
end
