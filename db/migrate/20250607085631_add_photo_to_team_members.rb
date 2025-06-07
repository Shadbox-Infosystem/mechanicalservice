class AddPhotoToTeamMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :team_members, :photo_file_name, :string
    add_column :team_members, :photo_content_type, :string
    add_column :team_members, :photo_file_size, :integer
    add_column :team_members, :photo_updated_at, :datetime
  end
end
