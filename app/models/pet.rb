class Pet < ApplicationRecord
  SPECIES = %w[cat fish hamster racoon dog]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
