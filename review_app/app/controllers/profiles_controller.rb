class ProfilesController < ApplicationController
  before_action :authorize, :only=> [:create, :new, :edit, :update]
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

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to profile_path(:id => @profile['userId'])
    else
      render 'edit'
    end
  end

  private
  def profile_params
  	params.require(:profile).permit(:fullName, :dob, :address, :city, :country, :profilePicture, :productImage)
  end
end