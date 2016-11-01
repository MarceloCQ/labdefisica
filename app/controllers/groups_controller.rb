class GroupsController < ApplicationController
  before_action :verify_user, only: [:new, :edit, :create, :destroy]

  def new
    @group = Group.new
  end

  def index
    @groups = current_user.retrieve_groups
  end

  def show
    @group = Group.find(params["id"])
    records = Record.find_by group: params["id"]
    @scores = records.scores
  end

  def create
    group = Group.new(group_parameters)
    if group.save
      flash[:notice] =  "Grupo guardado exitosamente"
    else
      flash[:alert] =  "Hubo un error. Vuelva a intentar"
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

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end

  def group_parameters
    params.require("group").permit(:timetable_id, :classroom, :seats, :user_id)
  end
end
