class ReviewsController < ApplicationController
  def show
  	@review = Review.find(params[:id])
  end

  def index
  	@reviews = Review.where('productId = ' + params['productId'])
  end

  def create
  	@review = Review.new(review_params)
    puts(@review.productId)
    @review.datePosted = Time.now
    @reviewProfile = Profile.where('userId = ' + current_user.id.to_s).first
    @review["author"] =  @reviewProfile['fullName']
    @review["profileId"] = @reviewProfile['id']
    @review.save
    redirect_to @review
  end

  def new
    @review=Review.new
    @profile=Profile.new
    @product=Product.new
  end

  private
  def review_params
  	params.require(:reviews).permit(:rating, :reviewText, :datePosted, :author, :profileId, :productId)
  end
end
