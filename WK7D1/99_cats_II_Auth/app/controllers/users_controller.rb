class UsersController < ApplicationController
  def new
    @user = User.new

    render :new
  end

  def show
    @user = User.find_by(params[:id])

    render :show
  end

  def create
    @user = User.new(user_params)  

    if @user.save
      login(@user)
      redirect_to user_url(@user) #we might need to change this part
    else
      render :new
    end
  end


  def user_params
    params.require(:user).permit(:username, :password) 
  end

end
