# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@garden = Garden.create!(name: "Turing Community Garden", organic: true)
@plot_1 = @garden.plots.create!(number: 15, size: "Medium", direction: "East")
@plot_2 = @garden.plots.create!(number: 30, size: "Large", direction: "South")
@plot_3 = @garden.plots.create!(number: 5, size: "Small", direction: "West")
@plant_1 = Plant.create!(name: "Purple Beauty Sweet Bell Pepper", description: "Prefers rich, well draining soil.", days_to_harvest: 90)
@plant_2 = Plant.create!(name: "Angry Flower", description: "Moist Soil.", days_to_harvest: 120)
@plant_3 = Plant.create!(name: "Strawberry", description: "Vitamin Rich.", days_to_harvest: 60)