class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      flash[:message] = @heroine.errors.full_messages
      render :new
    end
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end
