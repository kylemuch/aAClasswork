class UsersController < ApplicationController
  def index
    render plain: "I'm in the index action"
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
  end

  def show
    render json: params
  end
end

#controller names are always pluralized, a controller manages requests that pertian to a collection of resources. A resourcei s anyting in your application that you will be CRUDing. 