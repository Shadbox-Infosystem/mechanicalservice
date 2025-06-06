# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    @sections = AboutSection.all
    @team_members = TeamMember.all
  end
end
