class CreateNewsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :news_tags do |t|
      t.integer :tag_id
      t.integer :news_id

      t.timestamps
    end
  end
end
