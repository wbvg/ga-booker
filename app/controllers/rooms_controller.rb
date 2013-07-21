class RoomsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params[:room])
    if
    @room.save
      redirect_to(rooms_path)
    else
      @obj = @room
      render :new
    end
  end

  def edit
    @room = Room.find(params[:id])
    render :new
  end

  def update
    @room = Room.find(params[:id])
    if @room.update_attributes(params[:room])
      redirect_to(rooms_path)
    else
      @obj = @room
      render :new
    end
  end

  private
  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin?
  end

end

