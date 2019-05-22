class Prison < ApplicationRecord
  validates :name, presence: true
  validates :banner_url, presence: true
end
