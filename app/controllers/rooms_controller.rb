class RoomsController < ApplicationController
  before_action :load_room, only: %i[show edit update]
  before_action :load_rooms, only: %i[show]

  def index
    @rooms = Room.all
  end

  def show
    @room_message = RoomMessage.new room: @room
    @room_messages = @room.room_messages.includes(:user)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "Room #{@room.name} created successfully"
      redirect_to rooms_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @room.update_attributes(room_params)
      flash[:success] = "Room #{@room.name} updated successfully"
    else
      render 'edit'
    end
  end

  protected

  def load_room
    @room = Room.find(params[:id]) if params[:id]
  end

  def load_rooms
    @rooms = Room.all
  end

  def room_params
    params.require(:room).permit(:name)
  end
end
