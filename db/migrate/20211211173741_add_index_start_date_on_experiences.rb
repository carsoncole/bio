class AddIndexStartDateOnExperiences < ActiveRecord::Migration[7.0]
  def change
    add_index :experiences, [:end_date, :start_date], order: { end_date: :asc, start_date: :desc }
  end
end
