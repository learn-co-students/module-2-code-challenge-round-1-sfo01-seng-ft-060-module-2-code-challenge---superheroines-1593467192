class HeroinesController < ApplicationController
  
  before_action :set_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(strong_params)
    # byebug
    if @heroine.save
      redirect_to @heroine
    else
      # puts @heroine.errors
      # render :new
      flash[:messages] = @heroine.errors.full_messages
      render :new
    end

  end

  private

  def strong_params
    params.require(:heroine).permit(:name, :super_name)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

end
