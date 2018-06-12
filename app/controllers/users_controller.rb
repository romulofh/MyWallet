class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #render plain: params[:user].inspect
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Usuário criado com sucesso"
            redirect_to user_path(@user)
        else
            render 'new'
        end
     end

    def show
        @user = User.find(params[:id])
    end

    private
        def user_params
            params.require(:user).permit(:name, :cpf)
        end

end