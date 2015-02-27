class UsersController < ApplicationController

  def new
  @user = User.new
     end
 
 def show
 	 @user = User.find(params[:id])
  end

def create
    @user = User.new(user_params)
    if @user.save
          # @carrierwaveimages = CarrierwaveImage new("no_user_profile-pic.jpg")

    	  log_in @user
    	  flash[:success] = "Welcome ^.^ !"
        redirect_to @user
    else
      render 'new'
    end
end
  

  def edit
    @user = User.find(params[:id])
    @user.update_attribute(:signature, params[:text1])
    @user.save
  end

  def urlView


  end

  def update
         @user = User.find(params[:id])
        @user.update_attribute(:url, params[:text1])
        @user.save
      
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :signature , :url)
  end
end

