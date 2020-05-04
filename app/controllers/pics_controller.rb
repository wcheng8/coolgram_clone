class PicsController < ApplicationController
  def index
  end
  
  def new
    @pic = Pic.new
  end
  
  def create
    @pic = Pic.new(pic_params)
  end

  def show

  end

  def edit
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description)
  end

  def pic_id
  end
end
