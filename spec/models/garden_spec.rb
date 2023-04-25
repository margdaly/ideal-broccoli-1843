require 'rails_helper'

RSpec.describe Garden do
  describe 'relationships' do
    it { should have_many(:plots) }
  end

  describe 'instance methods' do
    before :each do
      @garden = Garden.create!(name: "Turing Community Garden", organic: true)
      @plot_1 = @garden.plots.create!(number: 15, size: "Medium", direction: "East")
      @plot_2 = @garden.plots.create!(number: 30, size: "Large", direction: "South")
      @plant_1 = Plant.create!(name: "Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90)
      @plant_2 = Plant.create!(name: "Angry Flower", description: "Moist Soil.", days_to_harvest: 120)
      @plant_3 = Plant.create!(name: "Strawberry", description: "Vitamin Rich.", days_to_harvest: 60)
      PlotPlant.create!(plot: @plot_1, plant: @plant_1)
      PlotPlant.create!(plot: @plot_1, plant: @plant_2)
      PlotPlant.create!(plot: @plot_1, plant: @plant_3)
      PlotPlant.create!(plot: @plot_2, plant: @plant_3)
      PlotPlant.create!(plot: @plot_2, plant: @plant_3)
    end
  
    describe "#garden_plants" do
      it "returns unique plant names that take under 100 days to harvest in a garden's plots" do
        expect(@garden.garden_plants).to eq(["Strawberry", "Sweet Bell Pepper"])
      end
    end
  end
end
