class PracticesController < ApplicationController
  before_action :verify_user, only: [:new, :edit, :create, :destroy]
  def new
    # @group = Group.new
  end

  def index
    # @groups = current_user.retrieve_groups
  end

  def show 
    # @group = Group.find(params["id"])
  end

  def create
    # group = Group.new(group_parameters)
    # if group.save
    #   flash[:notice] =  "Grupo guardado exitosamente"
    # else
    #   flash[:alert] =  "Hubo un error. Vuelva a intentar"
    # end
    # redirect_to groups_path
  end

  def edit
    @practice = Practice.find(params["id"])
  end

  def destroy
    # practice = Practice.find(params[:id])
    # practice.destroy
    # flash[:notice] =  "Práctica eliminada exitosamente"
    # redirect_to 
  end

  def update
  end
end