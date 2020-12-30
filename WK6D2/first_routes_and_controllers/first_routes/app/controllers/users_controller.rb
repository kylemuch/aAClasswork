class UsersController < ApplicationController

    def index
        user = User.all
        render json: user
    end

    def create
      user = User.new(params.require(:user).permit(:name, :email))
      
      if user.save
        render json: user
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
    end

    def show
        user = params[:id]

        render json: User.find(user)
    end

    def update
        user = User.find(params[:id])

        user.update(params.require(:user).permit(:name, :email))

        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy 

        render json: user
    end

end