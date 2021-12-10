class AddMetaDescriptionToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :meta_description, :string
    add_column :settings, :meta_title, :string
  end
end
