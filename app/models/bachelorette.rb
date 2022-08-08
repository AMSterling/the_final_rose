class Bachelorette <ApplicationRecord
  has_many :contestants

  def average_age
    contestants.average(:age)
  end

  def unique_hometowns
    contestants.select(:hometown).distinct.pluck(:hometown)
  end
end
