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
    byebug
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to @heroine 
    else
      flash[:errors] = @heroine.errors.full_messages
      render :new
    end
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :powers_attributes => [])
  end
end
