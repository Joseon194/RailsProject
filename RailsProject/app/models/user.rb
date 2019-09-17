class User < ApplicationRecord
  has_secure_password

  has_many :vehicles
  has_many :motorcycles, through :vehicles
  has_many :cars, through :cars

  def satisfaction
      self.satisfaction = self > 5 ? "happy"
    end
  end
end
