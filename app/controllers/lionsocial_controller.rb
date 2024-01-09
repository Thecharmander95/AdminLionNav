class LionsocialController < ApplicationController
  before_action :check_admin

  def disables
    @disable = Disable.first
  end

  def posts
    @posts = Post.by_newest
  end

  def annocments
    @announcement = Announcement.by_newest
  end

  def comments
    @comments = Comment.by_newest
  end

  def about
    @about = About.by_newest
  end

end
