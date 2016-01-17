class StaticPagesController < ApplicationController
  def home

  end

  def about
  end

  def update_services
    @services = Service.where("category_id = ?", params[:category_id])
    respond_to do |format|
      format.js
    end
  end

end
