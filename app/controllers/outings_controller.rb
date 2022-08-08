class OutingsController < ApplicationController
  before_action :find_bachelorette

  def show
    @outing = Outing.find(params[:id])
  end

  private
  def find_bachelorette
    @bachelorette = Bachelorette.find(params[:bachelorette_id])
  end
end
