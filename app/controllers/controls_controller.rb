class ControlsController < ApplicationController
  before_action :check_admin

  # Functions

  def updateannouncement
    @update = Announcement.find(params[:updatecall])

    if @update.hidden == true
      @update.update_attribute(:hidden, false)
    else
      @update.update_attribute(:hidden, true)
    end
    redirect_to annocments_path, notice: "Successfuly updated."
  end

  def updateabout
    @update = About.find(params[:updatecall])

    if @update.hidden == true
      @update.update_attribute(:hidden, false)
    else
      @update.update_attribute(:hidden, true)
    end
    redirect_to aboutpages_path, notice: "Successfuly updated."
  end

  def resolved
    @update = Error.find(params[:updatecall])
    if @update.resolved == true
      @update.update_attribute(:resolved, false)
    else
      @update.update_attribute(:resolved, true)
    end
    redirect_to errorpage_path, notice: "Successfuly updated."
  end

  def deleteforum
    @object = Forum.find(params[:deletecall])
    @object.delete
    redirect_to fourms_path, notice: "Successfuly deleted."
  end

  def deletecomment
    @object = Comment.find(params[:deletecall])
    @object.delete
    redirect_to fourmcomments_path, notice: "Successfuly deleted."
  end

  def deletevideo
    @object = Video.find(params[:deletecall])
    @object.delete
    redirect_to rvideos_path, notice: "Successfuly deleted."
  end

  # Pages

  def user
    @users = User.by_newest
  end

  def disable
    @disable = Disable.first
  end

  def annocments
    @announcement = Announcement.by_newest
  end

  def aboutpage
    @about = About.by_newest
  end

  def errorpage
    @error = Error.by_newest
  end
  
end
