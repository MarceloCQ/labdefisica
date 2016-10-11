class GruposController < ApplicationController
  def new
  	@grupo = Grupo.new
  end

  def index
    @grupo = Grupo.all
  end

  def show
  end

  def create
  	@grupo = Grupo.new(params["grupo"])
  end

  def edit
   # @grupo = Grupo.find(params["id"])
  end


  def destroy
  end
end
