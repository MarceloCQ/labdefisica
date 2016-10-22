class GroupsController < ApplicationController
  # before_action :verify_user

  def new
    @group = Group.new
  end

  def index
    @groups = current_user.retrieve_groups
  end

  def show 
    # @group = Group.find(params["id"])
  end

  def create
    group = Group.new(group_parameters)
    if group.save
      # Successful
    else
      # Unsuccessful
    end
    redirect_to groups_path
  end

  def edit
   # @grupo = Grupo.find(params["id"])
  end

  def destroy
    group = Group.find(params[:id])
    group.destroy
    # Alert deletion
    redirect_to :groups
  end

  private

  def group_parameters
    params.require("group").permit(:timetable_id, :classroom, :seats, :user_id)
  end
end