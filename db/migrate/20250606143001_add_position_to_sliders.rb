class AddPositionToSliders < ActiveRecord::Migration[7.1]
  def change
    add_column :sliders, :position, :integer
  end
end
