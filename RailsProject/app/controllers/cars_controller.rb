class CarsController < ApplicationController

def new
  @car = Car.new
end

def create
  @car = Car.new(car_params)
  if @car.save
    redirect_to @car
  else
    redirect_to new_car_path
  end
end

def edit
  @car = Car.find_by(id: params[:id])
end

def update
  @car= Car.find_by(id: params[:id])
  @car.update(car_params)
  redirect_to car_path(@car)
end

def show
  @car = Car.find_by(id: param[:id])
end

def index
  @car = Car.all
end

private

def car_params
  params_require(:car).permit(:name, :horsepower, :top_speed, :handling_rating, :comfort_rating)
end
end
