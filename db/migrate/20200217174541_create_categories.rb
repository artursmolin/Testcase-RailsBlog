class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title, null: false, unique: true, index: true
      t.string :indicator, unique: true

      t.timestamps
    end
  end
end
