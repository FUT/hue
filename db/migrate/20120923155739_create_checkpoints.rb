class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.text :description
      t.integer :user_id
      t.integer :text_id
      t.integer :seconds
      t.integer :length

      t.timestamps
    end
  end
end
