class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.boolean :is_available, default: true

      t.timestamps
    end
  end
end
