class RegistrationsController < ApplicationController
    def new 
        @user = User.new
    end

    def create
        # cria um novo usuário com os parametros do formulário
        @user = User.new(user_params)

        # se tudo deu certo o usuário será salvo, caso contrário
        # aparecerá uma mensagem de alerta
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "A conta foi criada com sucesso!"
        else
            render :new 
        end
    end

    private 

    def user_params 
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end