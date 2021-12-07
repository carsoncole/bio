class Experience < ApplicationRecord
  validates :title, presence: true
  validates :name, presence: true
  validates :start_date, presence: truex
end
