class InmateCrime < ApplicationRecord
  belongs_to :crime
  belongs_to :inmate
  validates_uniqueness_of :crime_id, scope: :inmate_id
end
