class PagesController < ApplicationController
  before_action :require_user

  def home

    def following
      @title = "Following"
      @user  = User.find(params[:id])
      @users = @user.following(page: params[:page])
      render 'show_follow'
    end

    def followers
      @title = "Followers"
      @user  = User.find(params[:id])
      @users = @user.followers(page: params[:page])
      render 'show_follow'
    end
  end

end
