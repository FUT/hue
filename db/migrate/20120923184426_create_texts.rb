class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :title
      t.string :author
      t.string :source
      t.date :source_date
      t.text :description

      t.timestamps
    end
  end
end
