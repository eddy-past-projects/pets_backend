class SessionsController < ApplicationController


    def create
      byebug

      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        render json: @user
      else
        render json: {
          error: 'invalid credentials'
        }
      end
    end


    def get_current_user
      if logged_in?
        render json: current_user
      else
        render json: {
          notice: 'no one logged in'
        }
      end
    end

    def destroy
      session.clear
        render json: {
        notice: "successfully logged out"
      }, status: :ok
    end



end
