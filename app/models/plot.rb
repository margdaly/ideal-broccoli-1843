class Plot < ApplicationRecord
  belongs_to :garden
  has_many :plot_plants
  has_many :plants, through: :plot_plants

  # def show_plants
  #  plants.under_100_days.unique_names
  # end
end
