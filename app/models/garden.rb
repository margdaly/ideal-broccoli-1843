class Garden < ApplicationRecord
  has_many :plots

  def garden_plants
    plots.joins(:plants).select('plants.*').distinct.where('plants.days_to_harvest < ?', 100).pluck(:name)
  end
end
