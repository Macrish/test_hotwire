class RetweetsController < ApplicationController
  before_action :set_tweet

  def create
    @tweet.increment!(:retweets_count)
    redirect_to @tweet
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end