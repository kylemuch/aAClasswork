class CatsController < ApplicationController

  def index
    cats = Cat.all
    render json: cats
  end

#   def create
#     cats = Cat.new(cat_params)
#     if cats.save
#         render json: cats
#     else
#         render json: cats.errors.full_messages, status: :unprocessable_entity
#     end
#  end

#  private

#  def cat_params
#     params.require(:cats).permit(:birth_date)
#  end


  

end
