class AddSlugToModels < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :slug, :string
    add_index :news, :slug, unique: true

    add_column :categories, :slug, :string
    add_index :categories, :slug, unique: true

    add_column :tags, :slug, :string
    add_index :tags, :slug, unique: true
  end
end
