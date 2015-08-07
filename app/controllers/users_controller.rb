class UsersController < ApplicationController
  before_action :set_user, only: [:show]


  def index
    @users = User.all
  end

  def show
    if current_user
      @stores = current_user.stores
    else
      redirect_to new_user_session_path
    end
  end

  private

  def set_user
    @user = User.friendly.find(params[:id])
  end
end