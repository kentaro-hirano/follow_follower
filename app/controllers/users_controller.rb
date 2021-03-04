class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def followes
    @follows = current_user.following_user
  end
  
  def followers
    @followers = current_user.follower_user
  end
end
