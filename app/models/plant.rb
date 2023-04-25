class Plant < ApplicationRecord
  has_many :plot_plants
  has_many :plots, through: :plot_plants

  # def self.unique_names
  #   Plant.distinct.pluck(:name)
  # end

  # def self.under_100_days
  #   Plant.where('days_to_harvest < ?', 100)
  # end
end
