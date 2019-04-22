class ReviewsController < ApplicationController
  def show
  	@review = Review.find(params[:id])
  end

  def index
  	@reviews = Review.where('productId = ' + params['productId'])
  end

  def create
  	@review = Review.new(reviews_params)
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

   def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path(:productId => @review.productId)
  end

  private
  def review_params
  	params.require(:review).permit(:rating, :reviewText, :datePosted, :author, :profileId, :productId)
  end
  def reviews_params
    params.require(:reviews).permit(:rating, :reviewText, :datePosted, :author, :profileId, :productId)
  end
end
