# frozen_string_literal: true

class TeamMembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_team_member, only: %i[edit update destroy]

  def index
    @team_members = TeamMember.all.order(position: :asc)
  end

  def new
    @team_member = TeamMember.new
  end

  def edit; end

  def create
    @team_member = TeamMember.new(team_member_params)

    if @team_member.save
      redirect_to about_path, notice: 'Team member was successfully created.'
    else
      render :new
    end
  end

  def update
    if @team_member.update(team_member_params)
      redirect_to about_sections_path, notice: 'Team member was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @team_member.destroy
    redirect_to about_path, notice: 'Team member was successfully deleted.'
  end

  private

  def set_team_member
    @team_member = TeamMember.find(params[:id])
  end

  def team_member_params
    params.require(:team_member).permit(:name, :role, :photo, :bio, :position)
  end
end
