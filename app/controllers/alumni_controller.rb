class AlumniController < ApplicationController
  before_filter :verify_user
  def home
    if current_user.course == nil
      @user = User.find(current_user.id)
      @courses = Course.all
    elsif current_user.group == nil
      redirect_to :groups_path
    else
      @user = User.find(current_user.id)
      @courses = Course.all
      render :action => "homeaux"
    end
  end

  def calificaciones
      @user = User.find(current_user.id)
      @courses = Course.all
      render :action => "homeaux"
  end

  def register_group
    group = Group.find(params[:id])
    if group.availability?
      flash[:notice] =  "Registrado en grupo exitosamente."
      current_user.update(group_id: group.id)
      create_grades(group)
      RegistroAlumnoMailer.registro_laboratorio(current_user).deliver
      redirect_to :alumni_home_path
    else
      flash[:alert] =  "El grupo se lleno. Vuelva a intentar."
      redirect_to :groups_path
    end
  end

  def create_grades(group)
    practices = group.practices
    practices.each do |p|
      Grade.create(practice_id: p.id, user_id: current_user.id)
    end
  end

  def get_teachers
    @teachers = Course.find(params[:course_id]).teachers
    respond_to do |format|
      format.json { render json: @teachers }
    end
  end

  def update
    current_user.update(course_id: params[:course_id], teacher_id: params[:teacher_id])
    #redirect_to :alumni_home_path
    redirect_to :groups_path
  end

  def user_update_parameters
    params.require("user").permit( :teacher_id, :course_id)
  end


  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 1
  end

end
