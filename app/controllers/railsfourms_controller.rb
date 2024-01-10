class RailsfourmsController < ApplicationController
  def forums
    @forum = Forum.by_newest
  end

  def comments
    @comment = Comment.by_newest
  end

  def errors
    @error = Error.by_newest
  end

  def annoucments
    @announcement = Announcement.by_newest
  end

  def disables
    @disable = Disable.first
  end

  def about
    @about = About.by_newest
  end

  def videos
    @video = Video.by_newest
  end

  def guides
    @guide = Guide.by_newest
  end
end
