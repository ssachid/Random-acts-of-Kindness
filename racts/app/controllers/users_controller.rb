class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
####################
  def active_tasks  #/user/:id/active
    @user = User.find(params[:id])
    @data = @user.active_tasks.to_json
    render json: @data
  end

end
