class MoviemakersController < ApplicationController
  def about
    @about = About.by_newest
  end

  def annoucments
    @announcement = Announcement.by_newest
  end

  def disable
    @disable = Disable.first
  end

  def errors
    @error = Error.by_newest
  end

  def movietally
    @movie = Movie.by_newest
  end
end
