class AdminController < ApplicationController
  before_filter :verify_user

  def home
  end

  def delete_students
    users = User.all.where(role: 1)
    grades = Grade.all
    count = 0
    users.each do |u|
      u.destroy
      count += 1
    end
    grades.each do |g|
      g.destroy
    end
    flash[:notice] = "Se borraron #{count} estudiantes satisfactoriamente."
    redirect_to :admin_home_path
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 3
  end
end