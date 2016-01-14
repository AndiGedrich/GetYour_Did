class SalonsController < ApplicationController
  def index
    @paginate = true
    @salons = Salon.page(params[:page]).per(5)
  end

  def show
    @salon = Salon.find(params[:id])
  end

  def edit
  end
end
