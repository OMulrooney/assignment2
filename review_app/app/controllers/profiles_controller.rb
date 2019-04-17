class ProfilesController < ApplicationController
  def show
      profile = Profile.find_by(userID: params[:id])
      if !profile
        redirect_to new_profile_path
      else
        @profile = profile
      end
  end

  def new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile["userId"] = current_user.id
    if @profile.save
      redirect_to profile_path(:id => current_user.id), notice:
      "This is your profile"
    else
      render 'new'
    end
  end 

  private
  def profile_params
  	params.require(:profile).permit(:fullName, :dob, :address, :city, :country, :profilePicture, :productImage)
  end
end