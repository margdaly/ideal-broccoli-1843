require 'rails_helper'

RSpec.describe Plant, type: :model do
  describe "relationships" do
    it {should have_many :plot_plants}
    it {should have_many(:plots).through(:plot_plants)}
  end

  # describe "class methods" do
  #   before :each do 
  #     @plant_1 = Plant.create!(name: "Rasberry", description: "Nutrient Rich", days_to_harvest: 101)
  #     @plant_2 = Plant.create!(name: "Angry Flower", description: "Moist Soil.", days_to_harvest: 120)
  #     @plant_3 = Plant.create!(name: "Strawberry", description: "Vitamin Rich.", days_to_harvest: 60)
  #     @plant_4 = Plant.create!(name: "Strawberry", description: "Vitamin Rich.", days_to_harvest: 60)
  #     @plant_5 = Plant.create!(name: "Strawberry", description: "Vitamin Rich.", days_to_harvest: 60)
  #   end

  #   describe "#unique_names" do
  #     it "returns name of all plants without duplicates" do
  #       expect(Plant.unique_names.sort).to eq(["Angry Flower", "Rasberry", "Strawberry"])
  #     end
  #   end

  #   describe "#under_100_days" do
  #     it "returns all plants that take less than 100 days to harvest" do
  #       expect(Plant.under_100_days).to eq([@plant_3, @plant_4, @plant_5])
  #     end
  #   end
  # end
end
