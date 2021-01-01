class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: param[:id])

    render :show
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
