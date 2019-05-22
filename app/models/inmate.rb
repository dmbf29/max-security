class Inmate < ApplicationRecord
  belongs_to :prison
  CRIMES = ['bad indentation', 'using scaffold', 'inline styling', 'spaces to indent']
  validates :name, presence: true
  validates :crime, inclusion: { in: CRIMES }
end
