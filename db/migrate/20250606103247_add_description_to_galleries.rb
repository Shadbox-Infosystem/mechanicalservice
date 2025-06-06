# frozen_string_literal: true

class AddDescriptionToGalleries < ActiveRecord::Migration[7.1]
  def change
    add_column :galleries, :description, :text
  end
end
