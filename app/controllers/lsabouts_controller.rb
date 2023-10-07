class LsaboutsController < ApplicationController
  before_action :set_about, only: [:edit, :update, :destroy]

  def new
    @about = Lsabout.new
  end

  def create
    @about = Lsabout.new(about_params)
    if @about.save
      flash[:notice] = "About page was successfully created"
      redirect_to lsabouts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @about.update(about_params)
     flash[:notice] = "About page was updated"
     redirect_to lionsocialabout_path
    else
     flash[:notice] = "About page was not updated"
     redirect_to lionsocialabout_path
    end
  end

  def index
    @page_title = "About Lion social"
    @abouts = Lsabout.all
  end

  def destroy
    @about.destroy
    flash[:notice] = "About page was deleted"
    redirect_to lsabouts_path
  end

  private

    def set_about
      @about = Lsabout.find(params[:id])
    end

    def about_params
      params.require(:lsabout).permit(:title, :toppara, :change, :list1, :list2, :list3, :buttom, :linkgithub, :githubtitle)
    end
end
