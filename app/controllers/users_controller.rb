class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def show
  end

  def new
    @user = User.new
  end
end
