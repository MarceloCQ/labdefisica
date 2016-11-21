class CoursesController < ApplicationController
  before_action :verify_user

  def new
    @course = Course.new
  end

  def index
    @courses = Course.all
  end

  def create
    c = Course.new(course_params)
    if c.save
      flash[:alert] =  "Curso creado satisfactoriamente"
    else
      flash[:alert] =  "Hubo un error. Vuelva a intentar"
    end
    redirect_to :courses
  end

  def edit
    @course = Course.find(params["id"])
  end

  def update
    c = Course.find(params[:id])
    if c.update_columns(course_params)
      flash[:notice] =  "Curso editado con éxito"
    else
      flash[:alert] =  "Hubo un error. Vuelva a intentar"
    end
    redirect_to :courses
  end

  def destroy
    c = Course.find(params[:id])
    c.destroy
    flash[:notice] = "Borrado con éxito."
    redirect_to :courses
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end

  def course_params
    params.require(:course).permit(:name)
  end
end
