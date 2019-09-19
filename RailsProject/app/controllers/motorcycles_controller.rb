class MotorcyclesController < ApplicationController

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(car_params)
    if @motorcycle.save
      redirect_to @motorcycle
    else
      redirect_to new_motorcycle_path
    end
  end

  def edit
    @motorcycle = Motorcycle.find_by(id: params[:id])
  end

  def update
    @motorcycle= Motorcycle.find_by(id: params[:id])
    @motorcycle.update(motorcycle_params)
    redirect_to motorcycle_path(@motorcycle)
  end

  def show
    @motorcycle = Motorcycle.find_by(id: param[:id])
  end

  def index
    @motorcycle = Motorcycle.all
  end

  private

  def motorcycle_params
    params_require(:motorcycle).permit(:name, :horsepower, :top_speed, :handling_rating, :comfort_rating)
  end
end
