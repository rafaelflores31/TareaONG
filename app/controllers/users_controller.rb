class UsersController < ApplicationController
  
 skip_before_filter :authenticate, only: [:new, :create]

  def new
  	@user = User.new
  end
  
  def create
  	@user = User.new(user_params)
    if @user.save
      #Esta funcion esta mandando un timeout al mandar el correo
      #UserMailer.welcome_email(@user).deliver
  		redirect_to nurseries_index_path
  	else
  		render :new
  	end
  end 

  
  def show

  end

  def edit
  end

    private

  	def user_params
  		params.require(:user).permit!
  	end
end
