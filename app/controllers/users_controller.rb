class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @user = pet.owner

    render json: @user
  end



  def create
		@user = User.new(
			name: params[:name],
			password: params[:password]
		)
		if @user.save
			token = encode_token(@user.id)

      render json: {user: UserSerializer.new(@user), token: token}
		else
			render json: {errors: @user.errors.full_messages}
		end
	end





end
