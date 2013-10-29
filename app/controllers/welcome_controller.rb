class WelcomeController < ApplicationController
  TWITTER_FRIENDS ||= TWITTER_CLIENT.friends.to_a

  def index
    @tweeps = get_my_tweeps
  end

  private

  def get_my_tweeps
    TWITTER_FRIENDS.sort_by { |friend| friend.followers_count }.reverse!
  end
end
