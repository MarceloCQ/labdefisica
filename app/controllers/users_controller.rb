class UsersController < ApplicationController
  before_action :verify_user

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show

  end

  def create
    u = User.new(user_create_parameters)
    if u.save
      flash[:notice] =  "Usuario guardado exitosamente"
    else
      flash[:alert] =  "Hubo un error. Vuelva a intentar"
    end
    redirect_to :users
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    # Alert deletion
    redirect_to :users
  end

  def update
    user = User.find(params[:id])
    user.group_id = user_update_parameters[:group_id]
    user.role = 1 if user_update_parameters[:role] == 'Alumno'
    user.role = 2 if user_update_parameters[:role] == 'Instructor'
    user.role = 3 if user_update_parameters[:role] == 'Administrador'
    if user.save
      flash[:notice] =  "Usuario editado exitosamente"
    else
      flash[:alert] =  "Hubo un error. Favor de volver a intentar."
    end
    redirect_to :users
  end

  def prueba
    @user = User.new
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end

  def user_update_parameters
    params.require("user").permit( :role, :group_id)
  end

  def user_create_parameters
    params.require("user").permit( :role, :student_id, :name, :last_name, :teacher_id, :password, :password_confirmation)
  end

end
