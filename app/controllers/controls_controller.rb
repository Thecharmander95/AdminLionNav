class ControlsController < ApplicationController
  def user
    @users = User.all
  end
end
