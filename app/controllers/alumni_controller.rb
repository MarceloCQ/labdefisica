class AlumniController < ApplicationController
  before_filter :verify_user
  def home
    if current_user.group_id != nil
      @user = User.find(current_user.id)
      render :action => "homeaux"      
    end
    @courses = Course.all
  end

  def register_group
    group = Group.find(params[:id])
    current_user.update(group_id: group.id)
    create_grades(group)
    redirect_to :alumni_home_path
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


  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 1
  end
end