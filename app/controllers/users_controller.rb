class UsersController < ApplicationController
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
    @user = User.new(user_params)
    @user.save
    render 'show'
  end

  def edit
  end

  def update
    @user.update(user_params)
    render 'show'
  end

  def destroy
    @user.destroy    
    redirect_to users_path
  end
  
  private
  def set_user
    @user = User.find(params[:id]) 
  end

  
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit( :name, :age, :description, :group_id)
  end

end
