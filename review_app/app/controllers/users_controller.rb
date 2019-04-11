class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path, notice:
			"Welcome #{@user.userid}! to Electronic Review App"
		else 
			render 'new'
		end
	end


	private
	  def user_params
	  	params.require(:user).permit(:userid, :email, :password)
	  end
end
