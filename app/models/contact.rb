# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :subject, presence: true, length: { minimum: 2, maximum: 200 }
  validates :message, presence: true, length: { minimum: 10, maximum: 1000 }
end
