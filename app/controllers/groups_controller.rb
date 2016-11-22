class GroupsController < ApplicationController
  before_action :verify_user, only: [:new, :edit, :create, :destroy]

  def new
    @group = Group.new
  end

  def index
    if current_user.role == 1 && !current_user.group && current_user.course
        @groups = current_user.retrieve_groups
    elsif current_user.role == 1 && current_user.group
        redirect_to :alumni_grades
    elsif current_user.role == 1 && !current_user.group
        render file: 'public/group_alumni_error.html', status: :unauthorized
    end
    @groups = current_user.retrieve_groups
  end

  def show
    @group = Group.find(params["id"])
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
    @group = Group.find(params["id"])
  end

  def destroy
    group = Group.find(params[:id])
    group.destroy
    flash[:notice] = "Borrado con éxito."
    redirect_to :groups
  end

  def update
    group = Group.find(params[:id])
    group.update_attributes(group_parameters)
    redirect_to :groups
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end

  def group_parameters
    params.require("group").permit(:timetable_id, :classroom, :seats, :user_id, :course_id)
  end
end
