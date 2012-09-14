class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :avatar
      t.integer :user_id
      t.string :full_name
      t.string :country

      t.timestamps
    end
  end
end
