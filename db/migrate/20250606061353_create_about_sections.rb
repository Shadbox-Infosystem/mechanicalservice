# frozen_string_literal: true

class CreateAboutSections < ActiveRecord::Migration[7.1]
  def change
    create_table :about_sections do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.integer :position

      t.timestamps
    end
  end
end
