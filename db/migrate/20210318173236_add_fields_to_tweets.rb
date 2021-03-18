class AddFieldsToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :retweets_count, :integer
    add_column :tweets, :likes_count, :integer
  end
end
