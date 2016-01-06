module Api
  class SalonsController < ApplicationController
    def index
      render json: Salon.all
    end
  end
end
