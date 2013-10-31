class WelcomeController < ApplicationController
  def index
    @user = current_user
    @tweeps = TWITTER_CLIENT.friends(current_user.username).to_a.sort_by { |user| user.followers_count }.reverse
  end
end
