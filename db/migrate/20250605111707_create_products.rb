# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :part_dia, precision: 8, scale: 2
      t.decimal :part_length, precision: 8, scale: 2
      t.string :grade
      t.string :image_url
      t.boolean :overstock

      t.timestamps
    end
  end
end
