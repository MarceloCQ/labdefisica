class TeachersController < ApplicationController
  before_action :verify_user

  def new
    @teacher = Teacher.new
  end

  def index
    @teachers = Teacher.all
  end

  def create
    t = Teacher.new(teacher_params)
    if t.save
      flash[:notice] = "Maestro creado satisfactoriamente"
    else
      flash[:alert] = "Hubo un error. Vuelta a intentar"
    end
    redirect_to :teachers
  end

  def edit
    @teacher = Teacher.find(params["id"])
  end

  def update
    t = Teacher.find(params[:id])
    binding.pry
    if t.update(teacher_params)
      flash[:notice] = "Maestro editado con éxito"
    else
      flash[:notice] = "Hubo un error. Vuelva a intentar"
    end
    redirect_to :teachers
  end

  def destroy
    t = Teacher.find(params[:id])
    t.destroy
    flash[:notice] = "Borrado con éxito."
    redirect_to :teachers
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end

  def teacher_params
    params.require(:teacher).permit(:name, :last_name, course_ids: [])
  end
end
