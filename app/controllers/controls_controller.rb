class ControlsController < ApplicationController
  def user
    @users = User.all
  end

  def disable
    @disable = Disable.first
  end
  
end
