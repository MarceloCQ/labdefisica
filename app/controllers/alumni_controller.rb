class AlumniController < ApplicationController
  before_filter :verify_user

  def home
  	
  end

  def registergroup
  	@groups = Group.all
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 1
  end
end