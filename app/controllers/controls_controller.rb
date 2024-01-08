class ControlsController < ApplicationController
  before_action :check_admin
  
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
    redirect_to annocments_path, notice: "Successfuly updated."
  end

  def updateabout
    @page = :page
    @update = About.find(params[:updatecall])

    if @update.hidden == true
      @update.update_attribute(:hidden, false)
    else
      @update.update_attribute(:hidden, true)
    end
    redirect_to aboutpages_path, notice: "Successfuly updated."
  end

  def annocments
    @announcement = Announcement.all
  end

  def aboutpage
    @about = About.all
  end
  
end
