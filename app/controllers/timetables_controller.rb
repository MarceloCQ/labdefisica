class TimetablesController < ApplicationController
  before_action :verify_user

  def new
    @timetable = Timetable.new
  end

  def index
    @timetable = Timetable.all
  end

  def show
    # @group = Group.find(params["id"])
  end


  def create
    parametros = params["timetable"]



    puts parametros
    t = Timetable.new(parametros[":day"].to_i, parametros["start_time(1i)"].to_i, parametros["start_time(2i)"].to_i, parametros["start_time(3i)"].to_i, parametros["start_time(4i)"].to_i, parametros["start_time(5i)"].to_i,parametros["duration"].to_i)
    
    redirect_to "http://localhost:3000/admin/home"

  end

  def edit
   # @grupo = Grupo.find(params["id"])
  end

  def destroy
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end

  def timetable_params
    params.require(:timetable).permit(:day, :start_time, :duration)
  end
end
