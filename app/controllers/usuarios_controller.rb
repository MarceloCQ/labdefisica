class UsuariosController < ApplicationController
  def index
    @usuarios = Usuario.all
  end

  def new
  	@usuario = Usuario.new
  end
end
