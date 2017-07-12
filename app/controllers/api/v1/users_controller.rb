class Api::V1::UsersController < ApplicationController
  def index
    render_json_success User.all.order(created_at: :desc)
  end

  def create
    user = User.new(user_params)
    if user.save
      render_json_success user
    else
      render_json_error(user.errors)
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
