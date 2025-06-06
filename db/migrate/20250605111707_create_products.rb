# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :category, null: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :image_url
      t.boolean :overstock

      t.timestamps
    end
  end
end
