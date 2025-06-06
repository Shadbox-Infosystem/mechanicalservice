# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category, optional: true
  has_one_attached :image
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_rich_text :description
end
