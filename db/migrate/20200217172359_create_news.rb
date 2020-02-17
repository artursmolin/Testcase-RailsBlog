class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title, null: false, unique: true, index: true
      t.text :description
      t.string :asset
      t.integer :admin_id, null: false,  index: true
      t.integer :category_id, null: false,  index: true

      t.timestamps
    end
  end
end
