# frozen_string_literal: true

class CreateTeamMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :role
      t.string :photo_url
      t.text :bio
      t.integer :position

      t.timestamps
    end
  end
end
