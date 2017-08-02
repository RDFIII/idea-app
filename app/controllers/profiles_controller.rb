class ProfilesController < ApplicationController

  def show
    @profile = User.find_by_username(params[:id])
  end

end
