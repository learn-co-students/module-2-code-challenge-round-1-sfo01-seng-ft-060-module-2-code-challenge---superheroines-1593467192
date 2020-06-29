class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update]
  def index
    @powers = Power.all
  end

  def edit
    @heroine_ids = []
  end

  def update
    if @power.update(strong_params)
      # @heroine_ids.each do |heroine_id|
      #   HeroinePower.create(power_id: @power.id, heroine_id: heroine_id)
      # end
      redirect_to @power
    else 
      flash[:messages] = @power.errors.full_messages
    end
  end

  private
  
  def strong_params
    params.require(:power).permit(:name, :description, heroine_ids:[] )
  end

  def set_power
    @power = Power.find(params[:id])
  end
end
