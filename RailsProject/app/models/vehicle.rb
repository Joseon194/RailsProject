class Vehicle < ApplicationRecord
  has_many :cars
  has_many :motorcycles

  has_many :users, through :cars
  has_many :users, through :motorcycles
end
