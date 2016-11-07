class InstructorsController < ApplicationController
  before_filter :verify_user

  def home
  end

  private

  def verify_user
    render file: 'public/401.html', status: :unauthorized if current_user.role != 2
  end
end