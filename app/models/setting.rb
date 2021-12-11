class Setting < ApplicationRecord
  validates :name, presence: true

  has_rich_text :education
  has_rich_text :open_source
end
