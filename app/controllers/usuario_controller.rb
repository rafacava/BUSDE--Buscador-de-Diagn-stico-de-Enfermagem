class UsuarioController < ApplicationController
  def new
    @user = Usuario.new
  end

  def show
    @user = Usuario.find(params[:id])
  end

  def create
    @user = Usuario.new(user_params)
    if @user.save 
      redirect_to usuario_show_path(@user)
    else
      render "new"
    end
  end
  
  private

    def user_params
      # VAI LER OS CONTEUDOS ESCRITOS NOS CAMPOS DO FORM
      params.require(:usuario).permit(:nome, :email, :password,
                                   :password_confirmation)
    end
end
