# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category, optional: true
  has_attached_file :image, styles: { medium: "500x350>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_rich_text :description
end
