class ReviewsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @reviews = current_user.reviews
    render json: @reviews
  end

  private

  def review_params
    params.require(:review).permit(:content )
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
