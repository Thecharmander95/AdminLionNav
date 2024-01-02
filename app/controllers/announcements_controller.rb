class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: %i[ show edit update destroy ]

  # GET /announcements or /announcements.json
  def index
    @announcements = Announcement.all
  end

  # GET /announcements/1 or /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements or /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.save
    redirect_to annocments_path
  end

  # PATCH/PUT /announcements/1 or /announcements/1.json
  def update
    if @announcement.update(announcement_params)
     flash[:notice] = "Announcement was successfully updated"
     redirect_to lionsocial_path
    else
     flash[:notice] = "Announcement was not successfully updated"
      redirect_to lionsocial_path
    end
  end

  # DELETE /announcements/1 or /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url, notice: "Announcement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def announcement_params
      params.require(:announcement).permit(:text, :site, :hidden)
    end
end
