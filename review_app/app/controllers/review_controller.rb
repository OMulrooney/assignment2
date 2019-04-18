class ReviewController < ApplicationController
  def show
  	@product = Review.find(params[:id])
  end

  def index
  	@products = Review.find(params[:productId])
  end

  def create
  	@review = Review.new(review_params)
    @review["profileId"] = current_user.id
    @review.save
    redirect_to @review
  end

  def new
  end

  private
  def review_params
  	params.require(:review).permit(:rating, :reviewText, :datePosted, :author)
  end
end
