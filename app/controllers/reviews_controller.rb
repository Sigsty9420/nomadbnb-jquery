class ReviewsController < ApplicationController
  before_action :set_room, only: [:create]
  before_action :set_review, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def create
    @review = @room.reviews.build(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to @room
    else
      redirect_to @room
    end
  end

  def index
    @reviews = current_user.reviews
    render json: @reviews
  end

  private

  def review_params
    params.require(:review).permit(:content )
  end

  def set_room
    @room = Room.find(params[:room_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
