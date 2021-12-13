class RemoveRemoveUrlFromSettings < ActiveRecord::Migration[7.0]
  def change
    remove_column :settings, :resume_url, :string
    add_column :settings, :host_url, :string
  end
end
