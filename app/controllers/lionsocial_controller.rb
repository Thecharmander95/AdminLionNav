class LionsocialController < ApplicationController
  
  def disables
    @disable = Disable.first
  end

  def posts
    @posts = Post.all
  end

  def annocments
    @announcement = Announcement.first
  end

  def comments
    @comments = Comment.all
  end

  def about
    @about = Lsabout.first
  end

end
