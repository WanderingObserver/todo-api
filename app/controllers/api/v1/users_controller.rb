class Api::V1::UsersController < ApplicationController
  def create
    user = User.create(user_params)

    if user
      jwt = Auth.encrypt({ user_id: user.id })
      render json: { jwt: jwt, current: user }
    else
      render json: { error: 'Failed to Sign Up' }, status: 400
    end
  end

  def login
    user = User.find_by(username: params[:user][:username])

    if user && user.authenticate(params[:user][:password])
      jwt = Auth.encrypt({ user_id: user.id })
      render json: { jwt: jwt, current: user }
    else
      render json: { error: 'Failed to Log In' }, status: 400
    end
  end

  def show
    render json: get_current_user
  end

  private

  def user_params
    params.require(:user).permit(
        :username,
        :password,
        :password_confirmation,
        :firstname,
        :lastname
      )
  end
end
