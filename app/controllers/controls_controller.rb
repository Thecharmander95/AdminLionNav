class ControlsController < ApplicationController
  def user
    @users = User.all
  end

  def disable
    @disable = Disable.first
  end

  def updateannouncement
    @update = Announcement.find(params[:updatecall])

    if @update.hidden == true
      @update.update_attribute(:hidden, false)
    else
      @update.update_attribute(:hidden, true)
    end
    redirect_to lionsocialannocments_path, notice: "Successfuly updated."
  end

  def annocments
    @announcement = Announcement.all
  end
  
end
