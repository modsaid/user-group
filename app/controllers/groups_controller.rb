class GroupsController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]
  def index
    @groups = Group.all
  end

  def new 
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    render 'show'
  end

  def edit
  end

  def update
  @group.update(group_params)
  render 'show'
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def set_group 
    @group = Group.find(params[:id])
  end

  def group_params
    params.rquire(:group).permit(:title)
  end

end
