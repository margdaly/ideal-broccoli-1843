class PlotPlantsController < ApplicationController
  def destroy
    @plot = Plot.find(params[:plot_id])
    @plant = @plot.plants.find(params[:id])
    @plant.plots.delete(@plot)
    redirect_to '/plots'
  end
end