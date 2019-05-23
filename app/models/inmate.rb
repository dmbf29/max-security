class Inmate < ApplicationRecord
  belongs_to :prison
  has_many :inmate_crimes
  has_many :crimes, through: :inmate_crimes
  validates :name, presence: true
  # validates :crime, inclusion: { in: CRIMES }
end
