class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title, unique: true
      t.integer :news_id, index: true

      t.timestamps
    end
  end
end
