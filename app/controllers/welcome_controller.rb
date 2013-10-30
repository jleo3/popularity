class WelcomeController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @user = current_user
    @tweeps = TWITTER_CLIENT.friends(current_user.username).to_a.sort_by { |user| user.followers_count }.reverse
  end
end
