class UsersController < ApplicationController
  def show
    id_params = params[:id].to_i
    @array_user = User.all
    @user = @array_user[id_params-1]

  end
end
