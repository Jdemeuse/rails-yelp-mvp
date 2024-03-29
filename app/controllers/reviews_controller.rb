class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
