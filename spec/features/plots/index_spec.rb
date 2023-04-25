require 'rails_helper'

RSpec.describe 'the plots index page' do
  describe "As a visitor" do
    before :each do
      @garden = Garden.create!(name: "Turing Community Garden", organic: true)
      @plot_1 = @garden.plots.create!(number: 15, size: "Medium", direction: "East")
      @plot_2 = @garden.plots.create!(number: 30, size: "Large", direction: "South")
      @plot_3 = @garden.plots.create!(number: 5, size: "Small", direction: "West")
      @plant_1 = Plant.create!(name: "Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90)
      @plant_2 = Plant.create!(name: "Angry Flower", description: "Moist Soil.", days_to_harvest: 120)
      @plant_3 = Plant.create!(name: "Strawberry", description: "Vitamin Rich.", days_to_harvest: 60)
      @plant_4 = Plant.create!(name: "Rasberry", description: "Nutrient Rich", days_to_harvest: 101)
      PlotPlant.create!(plot: @plot_1, plant: @plant_1)
      PlotPlant.create!(plot: @plot_1, plant: @plant_2)
      PlotPlant.create!(plot: @plot_1, plant: @plant_3)
      PlotPlant.create!(plot: @plot_2, plant: @plant_3)
      PlotPlant.create!(plot: @plot_2, plant: @plant_4)
    end

    it "I see a list of all plot numbers" do
      visit '/plots'
      expect(page).to have_content(@plot_1.number)
      expect(page).to have_content(@plot_2.number)
      expect(page).to have_content(@plot_3.number)
    end

    it "I see a list of plants associated with that plot" do
      visit '/plots'
      save_and_open_page
      within "#plot-#{@plot_1.id}" do
        expect(page).to have_content(@plant_1.name)
        expect(page).to have_content(@plant_2.name)
        expect(page).to have_content(@plant_3.name)
      end
      within "#plot-#{@plot_2.id}" do
        expect(page).to have_content(@plant_3.name)
        expect(page).to have_content(@plant_4.name)
      end
    end
  end
end