class AlumniController < ApplicationController
  before_filter :verify_user

  def home
  	@teacher = Teacher.all
    @courses = Course.all
  end

  def register_group
    binding.pry
    group = Group.find(params["id"])
    current_user.update(group_id: group.id)
    redirect_to :alumni_home_path
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 1
  end
end