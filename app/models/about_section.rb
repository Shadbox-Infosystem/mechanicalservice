# frozen_string_literal: true

class AboutSection < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :content, presence: true
  default_scope { order(position: :asc) }
end
