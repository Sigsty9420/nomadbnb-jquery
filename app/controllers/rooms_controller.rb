class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = current_user.rooms
    respond_to do |format|
      format.html { render :index}
      format.json { render json: @rooms}
    end
  end

  def show
    @review = @room.reviews.build
    respond_to do |format|
      format.html { render :show}
      format.json { render json: @room}
    end
  end

  def new
    @room = current_user.rooms.build
    @room.build_city
  end

  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
      redirect_to @room, notice: "Room succesfully created."
    else
      render :new, alert: "Please provide all information for this room."
    end
  end

  def edit

  end

  def update
    if @room.update(room_params)
      redirect_to @room, notice: "Room succesfully updated."
    else
      render :edit, alert: "Please provide all information for this room."
    end
  end

  def listings
    @listings = current_user.rooms
    render json: @listings
  end

  private

  def room_params
    params.require(:room).permit(:home_type, :room_type, :capacity, :bed_rooms, :bath_rooms, :listing_name, :summary, :address, :price, :active, city_attributes: [:name, :country])
  end

  def set_room
    @room = Room.find(params[:id])
  end


end
