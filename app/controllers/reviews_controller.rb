class ReviewsController < ApplicationController
  # before_action :require_login
  def create
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @product    = Product.find_by_id(params[:product_id])
    @product_id = @product.id
    puts "|======== Product Instance ID ========> #{@product.id}"
    @new_review = Review.new(
    product_id: @product.id,
    user_id: @current_user.id,
    description: review_params[:description],
    rating: review_params[:rating]
    )
    puts "|======== Review Instance Description ========> #{@new_review.description}"

    redirect_to product_path @product if @new_review.save!
  end

  def destroy
    puts "|======== Params ========> #{params}"
    @review = Review.find params[:id]
    @review.destroy
    redirect_to product_path params[:product_id]
  end

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end
end
