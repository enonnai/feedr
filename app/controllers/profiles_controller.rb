class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    redirect_to '/profiles/show'
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :location, :short_bio)
  end

end
