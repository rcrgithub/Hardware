class SessionsController < ApplicationController
      # def new; end
      #
      # def create
      #     user = User.find_by(email: params[:email])
      #     if user
      #         if user.authenticate(params[:password])
      #             session[:user_id] = user.id
      #             redirect_to root_url, notice: 'Haz iniciado sesion!'
      #         else
      #             flash.now.alert = 'Correo o contraseña invalidos'
      #             render 'new'
      #         end
      #     else
      #         flash.now.alert = 'Correo o contraseña invalidos'
      #         render 'new'
      #     end
      # end
      #
      # def destroy
      #     session[:user_id] = nil
      #     redirect_to root_url, notice: 'Has cerrado sesion!'
      # end
  end
