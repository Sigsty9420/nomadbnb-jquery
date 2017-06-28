class ReviewsController < ApplicationController
  before_action :set_room, only: [:create, :destroy]
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def create
    @review = @room.reviews.build(review_params)
    @review.user_id = current_user.id
    if @review.save
      render "reviews/show", :layout => false
    else
      render "rooms/"
    end
  end

  def index
    @reviews = current_user.reviews
    render json: @reviews
  end

  def destroy
    @review.destroy
    render json: { message: 'success', status: :ok }
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
