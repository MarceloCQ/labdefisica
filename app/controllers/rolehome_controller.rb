class RolehomeController < ApplicationController
  def index
    path = case current_user.role
    when 1
        :alumni_home_path
    when 2
        :instructors_home_path
    when 3
        :admin_home_path
    else
    end

    redirect_to path
  end
end
