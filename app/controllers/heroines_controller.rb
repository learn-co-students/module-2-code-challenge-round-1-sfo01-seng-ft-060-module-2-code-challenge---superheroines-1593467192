class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show 
    @heroines = Heroine.find(params[:super_name])
  end 

  def new 
		@heroines = Heroine.new 
	end 
  
end
