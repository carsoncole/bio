class AddResumeUrlToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :resume_url, :string
  end
end
