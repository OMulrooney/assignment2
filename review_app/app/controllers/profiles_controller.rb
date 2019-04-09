class ProfilesController < ApplicationController
  def show
  	@profile = Profile.find(params[:id])
  end

  def new
  end

  def create
  	@profile=Profile.new(profile_params)
  	@profile.save
  	redirect_to @profile
  end

  private
  def profile_params
  	params.require(:profile).permit(:fullName, :dob, :address, :city, :country, :profilePicture, :productImage)
  end
end