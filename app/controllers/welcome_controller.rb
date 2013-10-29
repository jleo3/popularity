class WelcomeController < ApplicationController
  def index
    @tweeps = get_my_tweeps
  end

  private

  def get_my_tweeps
    friends = TWITTER_CLIENT.friends.to_a
    friends.sort_by { |friend| friend.followers_count }.reverse!
  end
end
