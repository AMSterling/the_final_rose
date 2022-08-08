class Outing < ApplicationRecord
  has_many :contestant_outings
  has_many :contestants, through: :contestant_outings

  def participants
    contestants.count(:id)
  end
end
