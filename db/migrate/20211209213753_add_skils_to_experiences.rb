class AddSkilsToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :skills, :text
  end
end
