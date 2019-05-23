class Crime < ApplicationRecord
  has_many :inmate_crimes
  has_many :inmates, through: :inmate_crimes
  validates :name, presence: true
end
