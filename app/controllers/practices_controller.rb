class PracticesController < ApplicationController
  before_action :verify_user, only: [:new, :edit, :create, :destroy]
  def new
    @practice = Practice.new
    @group = Group.find(params[:group_id])
  end

  def create
    practice = Practice.new(practice_parameters)
    practice.group = Group.find(params[:group_id])
    if practice.save
      flash[:notice] =  "Práctica guardada exitosamente"
    else
      flash[:alert] =  "Hubo un error. Vuelva a intentar"
    end
    redirect_to groups_path
  end

  def edit
    @group = Group.find(params[:group_id])
    @practice = Practice.find(params[:id])
  end

  def destroy
    practice = Practice.find(params[:id])
    flash[:notice] = "Borrado con éxito." if practice.destroy
    redirect_to group_path(id: params[:group_id])
  end

  def update
    practice = Practice.find(params[:id])
    flash[:notice] = "Editada con éxito." if practice.update_attributes(practice_parameters)
    redirect_to group_path(id: params[:group_id])
  end

  def grades
    @practice = Practice.find(params[:id])
    @group = Group.find(params[:group_id])
  end

  def register_grades
    @practice = Practice.find(params[:id])
    params[:practice][:grades].keys.each do |id|
      @grade = Grade.find(id)
      @grade.update_attributes(grade_params(id))
    end
    redirect_to :groups
  end

  private 

  def practice_parameters
    params.require(:practice).permit(:practice_no, :name, :description)
  end

  def grade_params(id)
    params.require(:practice).require(:grades).fetch(id).permit(:grade)
  end

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 2
  end
end