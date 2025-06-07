class AddImageToSliders < ActiveRecord::Migration[7.1]
  def change
    add_column :sliders, :image_file_name, :string
    add_column :sliders, :image_content_type, :string
    add_column :sliders, :image_file_size, :integer
    add_column :sliders, :image_updated_at, :datetime
  end
end
