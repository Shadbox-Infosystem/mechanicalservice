class AddSlugToGalleries < ActiveRecord::Migration[7.1]
  def change
    add_column :galleries, :slug, :string
    add_index :galleries, :slug, unique: true
  end
end
