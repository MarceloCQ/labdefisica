class AlumniController < ApplicationController
  before_filter :verify_user

  def home
  	@teacher = Teacher.all
  end

  def register_group
  	redirect_to groups_path
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 1
  end
end