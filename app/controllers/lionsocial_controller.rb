class LionsocialController < ApplicationController
  before_action :check_admin

  def disables
    @disable = Disable.first
  end

  def posts
    @posts = Post.all
  end

  def annocments
    @announcement = Announcement.all
  end

  def comments
    @comments = Comment.all
  end

  def about
    @about = About.all
  end

end
