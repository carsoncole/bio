class Setting < ApplicationRecord
  validates :name, presence: true

  has_rich_text :education
end
