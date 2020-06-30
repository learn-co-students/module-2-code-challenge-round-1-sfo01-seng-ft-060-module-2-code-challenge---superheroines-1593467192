class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update]

  def index
    @powers = Power.all
  end
  
  def update
    if @power.update(power_params)
      redirect_to @power
    else
      render :edit
    end
  end

  private
  def power_params
    params.require(:power).permit(:name, :description, :heroine_powers_attributes => {})
  end

  def set_power
    @power = Power.find(params[:id])
  end

end
