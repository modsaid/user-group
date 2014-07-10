class UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @new = User.new
  end

  def edit
  end

  def update
  end

  def destroy
    @user.destroy
    render index
  end

  def set_user
    @user = @user = User.find(params[:id]) 
  end
end
