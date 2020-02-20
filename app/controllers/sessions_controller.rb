# class SessionsController < ApplicationController
#
#   def get_current_user
#     if logged_in?
#       render json: current_user
#     else
#       render json: {
#         notice: 'no one logged in'
#       }
#     end
#   end
#
#
#   def create
#     @user = User.find_by(name: params[:name])
#          if @user && @user.authenticate(params[:password])
#         login!
#         render json: {
#           logged_in: true,
#           user: @user
#         }
#       else
#         render json: {
#           status: 401,
#           errors: ['no such user', 'verify credentials and try again or signup']
#         }
#       end
#     end
#   def is_logged_in?
#       if logged_in? && current_user
#         render json: {
#           logged_in: true,
#           user: current_user
#         }
#       else
#         render json: {
#           logged_in: false,
#           message: 'no such user'
#         }
#       end
#     end
#   def destroy
#       logout!
#       render json: {
#         status: 200,
#         logged_out: true
#       }
#   end
#
# end
