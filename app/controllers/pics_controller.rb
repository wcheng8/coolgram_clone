class PicsController < ApplicationController
  before_action :pic_id, only: [:show, :edit, :update, :destroy]

  def index
  end
  
  def new
    @pic = Pic.new
  end
  
  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to @pic, notice: "Yes it was Posted!"
    else
      render 'new'
    end
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description)
  end

  def pic_id
    @pic = Pic.find(params[:id])
  end
end
