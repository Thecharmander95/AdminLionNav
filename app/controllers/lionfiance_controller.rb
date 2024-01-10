class LionfianceController < ApplicationController
  def disables
    @disable = Disable.first
  end

  def annoucments
    @announcement = Announcement.by_newest
  end

  def about
    @about = About.by_newest
  end

  def errors
    @error = Error.by_newest
  end
end
