class Prison < ApplicationRecord
  has_many :inmates, dependent: :destroy
  validates :name, presence: true
  validates :banner_url, presence: true
end
