class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def delete
    @user = User.delete(params[:id])
  end
end
