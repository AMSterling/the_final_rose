class ContestantsController < ApplicationController
  before_action :find_bachelorette

  def index
    @contestants = Contestant.all
  end

  def show
    @contestant = Contestant.find(params[:id])
  end
  
  private
  def find_bachelorette
    @bachelorette = Bachelorette.find(params[:bachelorette_id])
  end
end
