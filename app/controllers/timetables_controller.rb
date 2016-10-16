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
    tt = Timetable.new(timetable_params)
    if tt.save
      # Successful
      binding.pry
    else
      binding.pry
      # Unsuccessful
    end
    redirect_to :timetables
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
